import 'package:commerce_flutter_storefront/core/auth/token_manager_provider.dart';
import 'package:commerce_flutter_storefront/core/cart/cart_manager_provider.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/providers/account_provider.dart';
import 'package:commerce_flutter_storefront/features/auth/di/auth_repository_provider.dart';
import 'package:commerce_flutter_storefront/features/auth/presentation/providers/auth_provider.dart';
import 'package:commerce_flutter_storefront/features/cart/presentation/providers/cart_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_mutations.g.dart';

@riverpod
class AuthMutations extends _$AuthMutations {
  @override
  FutureOr<void> build() {}

  Future<void> login({required String email, required String password}) async {
    state = const AsyncLoading();

    final tokenManager = ref.read(tokenManagerProvider);

    state = await AsyncValue.guard(() async {
      final tokens = await ref
          .read(authRepositoryProvider)
          .login(email: email, password: password);

      await tokenManager.save(tokens);

      ref.invalidate(isAuthenticatedProvider);

      ref.invalidate(userProfileProvider);
      ref.invalidate(cartProvider);
    });
  }

  Future<void> logout() async {
    state = const AsyncLoading();

    final tokenManager = ref.read(tokenManagerProvider);
    final cartManager = ref.read(cartManagerProvider);

    final refreshToken = await tokenManager.getRefreshToken();

    state = await AsyncValue.guard(() async {
      try {
        if (refreshToken != null && refreshToken.isNotEmpty) {
          await ref
              .read(authRepositoryProvider)
              .logout(refreshToken: refreshToken);
        }
      } finally {
        // Always clear local credentials, even if the logout
        // request fails or the refresh token has already expired.
        await tokenManager.clear();
        await cartManager.clear();

        ref.invalidate(isAuthenticatedProvider);

        ref.invalidate(userProfileProvider);
        ref.invalidate(cartProvider);
      }
    });
  }
}
