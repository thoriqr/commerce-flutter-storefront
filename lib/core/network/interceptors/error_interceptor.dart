import 'package:commerce_flutter_storefront/core/exceptions/app_exception.dart';
import 'package:dio/dio.dart';

import '../../models/api_error.dart';

class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final data = err.response?.data;

    if (data is Map<String, dynamic>) {
      final errorJson = data['error'];

      if (errorJson is Map<String, dynamic>) {
        final apiError = ApiError.fromJson(errorJson);

        handler.reject(
          DioException(
            requestOptions: err.requestOptions,
            error: AppException(code: apiError.code, message: apiError.message),
          ),
        );

        return;
      }
    }

    handler.next(err);
  }
}
