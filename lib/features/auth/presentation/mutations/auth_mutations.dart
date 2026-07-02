import 'package:commerce_flutter_storefront/core/auth/token_manager_provider.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/providers/account_provider.dart';
import 'package:commerce_flutter_storefront/features/auth/di/auth_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_mutations.g.dart';

@riverpod
class AuthMutations extends _$AuthMutations {
  @override
  FutureOr<void> build() {}

  Future<void> login({required String email, required String password}) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final tokens = await ref
          .read(authRepositoryProvider)
          .login(email: email, password: password);

      await ref.read(tokenManagerProvider).save(tokens);

      ref.invalidate(userProfileProvider);
    });
  }

  Future<void> logout() async {
    state = const AsyncLoading();

    final tokenManager = ref.read(tokenManagerProvider);

    final refreshToken = await tokenManager.getRefreshToken();

    state = await AsyncValue.guard(() async {
      try {
        if (refreshToken != null && refreshToken.isNotEmpty) {
          await ref
              .read(authRepositoryProvider)
              .logout(refreshToken: refreshToken);
        }
      } finally {
        await tokenManager.clear();

        ref.invalidate(userProfileProvider);
      }
    });
  }
}
