import 'package:commerce_flutter_storefront/core/network/api_error_parser.dart';
import 'package:dio/dio.dart';

class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final error = parseApiError(err);

    if (error == null) {
      handler.next(err);
      return;
    }

    handler.reject(
      DioException(
        requestOptions: err.requestOptions,
        response: err.response,
        type: err.type,
        error: error,
      ),
    );
  }
}
