import 'package:commerce_flutter_storefront/features/auth/data/models/auth_tokens.dart';
import 'package:commerce_flutter_storefront/features/auth/di/auth_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_notifier.g.dart';

@riverpod
class Auth extends _$Auth {
  @override
  FutureOr<void> build() {}

  Future<AuthTokens> login({required String email, required String password}) {
    return ref
        .read(authRepositoryProvider)
        .login(email: email, password: password);
  }

  Future<void> logout({required String refreshToken}) {
    return ref.read(authRepositoryProvider).logout(refreshToken: refreshToken);
  }
}
