import 'package:commerce_flutter_storefront/core/exceptions/app_exception.dart';
import 'package:commerce_flutter_storefront/core/models/api_response.dart';
import 'package:commerce_flutter_storefront/core/models/api_response_with_meta.dart';
import 'package:dio/dio.dart';

AppException mapException(DioException e) {
  if (e.error case final AppException appException) {
    return appException;
  }

  return AppException(
    code: 'UNKNOWN_ERROR',
    message: e.message ?? 'Something went wrong',
  );
}

extension ApiResponseFutureX<T> on Future<ApiResponse<T>> {
  Future<T> unwrap() async {
    try {
      return (await this).data;
    } on DioException catch (e) {
      throw mapException(e);
    }
  }
}

extension ApiResponseWithMetaFutureX<T, M>
    on Future<ApiResponseWithMeta<T, M>> {
  Future<ApiResponseWithMeta<T, M>> unwrap() async {
    try {
      return await this;
    } on DioException catch (e) {
      throw mapException(e);
    }
  }
}
