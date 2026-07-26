import 'package:commerce_flutter_storefront/core/exceptions/app_exception.dart';
import 'package:commerce_flutter_storefront/core/models/api_error.dart';
import 'package:dio/dio.dart';

AppException? parseApiError(DioException error) {
  if (error.error case final AppException exception) {
    return exception;
  }

  final data = error.response?.data;

  if (data is! Map<String, dynamic>) {
    return null;
  }

  final errorJson = data["error"];

  if (errorJson is! Map<String, dynamic>) {
    return null;
  }

  final apiError = ApiError.fromJson(errorJson);

  return AppException(code: apiError.code, message: apiError.message);
}
