import 'package:commerce_flutter_storefront/core/exceptions/app_exception.dart';
import 'package:commerce_flutter_storefront/core/models/api_response.dart';
import 'package:dio/dio.dart';

extension ApiResponseFutureX<T> on Future<ApiResponse<T>> {
  Future<T> unwrap() async {
    try {
      return (await this).data;
    } on DioException catch (e) {
      if (e.error case final AppException appException) {
        throw appException;
      }

      throw AppException(
        code: 'UNKNOWN_ERROR',
        message: e.message ?? 'Something went wrong',
      );
    }
  }
}
