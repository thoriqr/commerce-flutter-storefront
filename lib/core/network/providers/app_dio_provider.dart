import 'package:commerce_flutter_storefront/core/auth/token_manager_provider.dart';
import 'package:commerce_flutter_storefront/core/network/interceptors/auth_interceptor.dart';
import 'package:commerce_flutter_storefront/core/network/interceptors/error_interceptor.dart';
import 'package:commerce_flutter_storefront/core/network/interceptors/mobile_client_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_dio_provider.g.dart';

@riverpod
Dio appDio(Ref ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: "http://10.0.2.2:8000/v1",
      contentType: Headers.jsonContentType,
      // baseUrl: "https://api.commerce.web.id/v1",
    ),
  );

  dio.interceptors.addAll([
    MobileClientInterceptor(),
    AuthInterceptor(dio: dio, tokenManager: ref.read(tokenManagerProvider)),
    ErrorInterceptor(),
  ]);
  return dio;
}
