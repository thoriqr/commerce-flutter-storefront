import 'package:dio/dio.dart';

class MobileClientInterceptor extends Interceptor {
  static const _clientHeader = 'x-auth-client';
  static const _clientValue = 'mobile';

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers[_clientHeader] = _clientValue;

    handler.next(options);
  }
}
