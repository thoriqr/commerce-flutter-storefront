import 'package:commerce_flutter_storefront/core/network/interceptors/error_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_provider.g.dart';

@riverpod
Dio dio(Ref ref) {
  final dio = Dio(BaseOptions(baseUrl: "http://10.0.2.2:8000/v1"));

  dio.interceptors.add(ErrorInterceptor());

  return dio;
}
