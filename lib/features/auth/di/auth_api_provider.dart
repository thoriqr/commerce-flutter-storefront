import 'package:commerce_flutter_storefront/core/network/providers/app_dio_provider.dart';
import 'package:commerce_flutter_storefront/features/auth/data/datasource/auth_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_api_provider.g.dart';

@riverpod
AuthApi authApi(Ref ref) {
  return AuthApi(ref.watch(appDioProvider));
}
