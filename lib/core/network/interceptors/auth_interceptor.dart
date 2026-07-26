import 'package:commerce_flutter_storefront/core/auth/session_manager.dart';
import 'package:commerce_flutter_storefront/core/constants/error_codes.dart';
import 'package:commerce_flutter_storefront/core/exceptions/app_exception.dart';
import 'package:commerce_flutter_storefront/core/network/api_error_parser.dart';
import 'package:commerce_flutter_storefront/features/auth/constants/auth_constants.dart';
import 'package:dio/dio.dart';

class AuthInterceptor extends QueuedInterceptor {
  AuthInterceptor({required this.dio, required this.sessionManager});

  static const _retryKey = "is_retry";

  final Dio dio;
  final SessionManager sessionManager;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final accessToken = await sessionManager.getAccessToken();

    if (accessToken != null && accessToken.isNotEmpty) {
      options.headers["Authorization"] = "Bearer $accessToken";
    }

    handler.next(options);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final request = err.requestOptions;
    final error = parseApiError(err);

    if (error == null) {
      handler.next(err);
      return;
    }

    // An invalid access token cannot be safely recovered.
    if (error.code == ErrorCodes.invalidAccessToken) {
      await sessionManager.clear();

      handler.next(err);
      return;
    }

    // Only an expired access token should trigger token refresh.
    if (error.code != ErrorCodes.accessTokenExpired) {
      handler.next(err);
      return;
    }

    // Defensive guard.
    // Refresh requests use refreshDio and normally never reach this interceptor.
    if (request.path == AuthConstants.refreshPath) {
      handler.next(err);
      return;
    }

    // Prevent the original request from being retried more than once.
    if (request.extra[_retryKey] == true) {
      handler.next(err);
      return;
    }

    try {
      final tokens = await sessionManager.refresh();

      final response = await _retry(request, tokens.accessToken);

      handler.resolve(response);
    } on AppException catch (refreshError) {
      // Terminal refresh errors are translated by SessionManager into
      // SESSION_EXPIRED after the local session has been cleared.
      handler.reject(
        DioException(
          requestOptions: request,
          error: refreshError,
          type: DioExceptionType.badResponse,
        ),
      );
    } on DioException catch (refreshError) {
      // Preserve network and transport failures from the refresh request.
      handler.next(refreshError);
    }
  }

  Future<Response<dynamic>> _retry(RequestOptions request, String accessToken) {
    final headers = Map<String, dynamic>.from(request.headers)
      ..["Authorization"] = "Bearer $accessToken";

    final extra = Map<String, dynamic>.from(request.extra)..[_retryKey] = true;

    return dio.request<dynamic>(
      request.path,
      data: request.data,
      queryParameters: request.queryParameters,
      cancelToken: request.cancelToken,
      onSendProgress: request.onSendProgress,
      onReceiveProgress: request.onReceiveProgress,
      options: Options(
        method: request.method,
        headers: headers,
        responseType: request.responseType,
        contentType: request.contentType,
        extra: extra,
        receiveDataWhenStatusError: request.receiveDataWhenStatusError,
        followRedirects: request.followRedirects,
        validateStatus: request.validateStatus,
        sendTimeout: request.sendTimeout,
        receiveTimeout: request.receiveTimeout,
      ),
    );
  }
}
