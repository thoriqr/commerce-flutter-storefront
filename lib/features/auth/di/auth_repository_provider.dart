import 'package:commerce_flutter_storefront/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:commerce_flutter_storefront/features/auth/di/auth_api_provider.dart';
import 'package:commerce_flutter_storefront/features/auth/domain/repositories/auth_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_repository_provider.g.dart';

@riverpod
AuthRepository authRepository(Ref ref) {
  return AuthRepositoryImpl(ref.watch(authApiProvider));
}
