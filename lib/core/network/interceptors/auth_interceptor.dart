import 'package:commerce_flutter_storefront/core/auth/token_manager.dart';
import 'package:commerce_flutter_storefront/core/exceptions/app_exception.dart';
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
    // Attach the current access token.
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

    // Only handle unauthorized responses.
    if (err.response?.statusCode != 401) {
      handler.next(err);
      return;
    }

    // Skip selected authentication endpoints.
    //
    // TODO:
    // Temporary workaround.
    //
    // The backend currently returns the same 401 error code (UNAUTHORIZED) for
    // both expired access tokens and business authentication failures such as
    // invalid credentials. Without dedicated error codes, the interceptor cannot
    // distinguish whether it should refresh the access token or simply forward
    // the error to the caller.
    //
    // As a temporary solution, authentication endpoints that may legitimately
    // return 401 for business reasons are excluded from automatic refresh to
    // prevent infinite refresh/retry loops.
    //
    // Trade-off:
    // If the access token expires while calling one of these endpoints, the
    // request will fail instead of being refreshed automatically.
    //
    // Remove this workaround once the backend exposes dedicated auth error codes
    // (e.g. ACCESS_TOKEN_EXPIRED, INVALID_CREDENTIALS) and refresh based on the
    // returned error code instead of the request path.
    if (AuthConstants.excludedPaths.contains(request.path)) {
      handler.next(err);
      return;
    }

    // Prevent infinite retry loops.
    if (request.extra[_retryKey] == true) {
      handler.next(err);
      return;
    }

    // Guests cannot refresh because they do not have a refresh token.
    final refreshToken = await tokenManager.getRefreshToken();

    if (refreshToken == null || refreshToken.isEmpty) {
      handler.next(err);
      return;
    }

    try {
      // Refresh tokens.
      final tokens = await tokenManager.refresh();

      // Retry the original request.
      final response = await _retry(request, tokens.accessToken);

      handler.resolve(response);
    } on AppException {
      // Refresh failed because the session is no longer valid.
      handler.next(err);
    } on DioException {
      // Network failure while refreshing.
      handler.next(err);
    }
  }

  Future<Response<dynamic>> _retry(RequestOptions request, String accessToken) {
    final headers = Map<String, dynamic>.from(request.headers)
      ..['Authorization'] = 'Bearer $accessToken';

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
