import 'package:commerce_flutter_storefront/core/network/interceptors/error_interceptor.dart';
import 'package:commerce_flutter_storefront/core/network/interceptors/mobile_client_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'refresh_dio_provider.g.dart';

@riverpod
Dio refreshDio(Ref ref) {
  final dio = Dio(BaseOptions(baseUrl: "http://10.0.2.2:8000/v1"));
  // final dio = Dio(BaseOptions(baseUrl: "https://api.commerce.web.id/v1"));

  dio.interceptors.addAll([MobileClientInterceptor(), ErrorInterceptor()]);

  return dio;
}
