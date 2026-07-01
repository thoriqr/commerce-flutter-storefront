import 'package:commerce_flutter_storefront/core/auth/token_manager.dart';
import 'package:commerce_flutter_storefront/features/auth/constants/auth_constants.dart';
import 'package:dio/dio.dart';

class AuthInterceptor extends QueuedInterceptor {
  AuthInterceptor({required this.dio, required this.tokenManager});

  static const _retryKey = 'is_retry';

  final Dio dio;
  final TokenManager tokenManager;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final accessToken = await tokenManager.getAccessToken();

    if (accessToken != null && accessToken.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $accessToken';
    }

    handler.next(options);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final request = err.requestOptions;

    if (AuthConstants.excludedPaths.contains(request.path)) {
      handler.next(err);
      return;
    }

    // handle 401
    if (err.response?.statusCode != 401) {
      handler.next(err);
      return;
    }

    // Retry once
    if (request.extra[_retryKey] == true) {
      handler.next(err);
      return;
    }

    try {
      final tokens = await tokenManager.refresh();

      final response = await _retry(request, tokens.accessToken);

      handler.resolve(response);
    } catch (_) {
      handler.next(err);
    }
  }

  Future<Response<dynamic>> _retry(RequestOptions request, String accessToken) {
    final headers = Map<String, dynamic>.from(request.headers);
    headers['Authorization'] = 'Bearer $accessToken';

    final extra = Map<String, dynamic>.from(request.extra);
    extra[_retryKey] = true;

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
