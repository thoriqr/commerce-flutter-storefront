import 'package:commerce_flutter_storefront/core/auth/token_manager_provider.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/providers/account_provider.dart';
import 'package:commerce_flutter_storefront/features/auth/data/models/auth_tokens.dart';
import 'package:commerce_flutter_storefront/features/auth/data/models/change_password_request.dart';
import 'package:commerce_flutter_storefront/features/auth/data/models/login_request.dart';
import 'package:commerce_flutter_storefront/features/auth/data/models/refresh_request.dart';
import 'package:commerce_flutter_storefront/features/auth/data/models/set_password_request.dart';
import 'package:commerce_flutter_storefront/features/auth/di/auth_repository_provider.dart';
import 'package:commerce_flutter_storefront/features/auth/presentation/providers/auth_provider.dart';
import 'package:commerce_flutter_storefront/features/cart/presentation/providers/cart_provider.dart';
import 'package:commerce_flutter_storefront/features/shared/mixins/async_mutation_mixin.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_mutations.g.dart';

@riverpod
class AuthMutations extends _$AuthMutations with AsyncMutationMixin<void> {
  @override
  FutureOr<void> build() {}

  Future<void> _saveSession(
    AuthTokens tokens, {
    bool invalidateCart = false,
  }) async {
    final tokenManager = ref.read(tokenManagerProvider);

    await tokenManager.save(tokens);

    ref.invalidate(isAuthenticatedProvider);
    ref.invalidate(userProfileProvider);

    if (invalidateCart) {
      ref.invalidate(cartProvider);
    }
  }

  Future<void> login(LoginRequest request) {
    return guard(() async {
      final tokens = await ref.read(authRepositoryProvider).login(request);

      await _saveSession(tokens, invalidateCart: true);
    });
  }

  Future<void> changePassword(ChangePasswordRequest request) {
    return guard(() async {
      final tokens = await ref
          .read(authRepositoryProvider)
          .changePassword(request);

      await _saveSession(tokens);
    });
  }

  Future<void> setPassword(SetPasswordRequest request) {
    return guard(() async {
      final tokens = await ref
          .read(authRepositoryProvider)
          .setPassword(request);

      await _saveSession(tokens);
    });
  }

  Future<void> logout() async {
    final tokenManager = ref.read(tokenManagerProvider);
    final refreshToken = await tokenManager.getRefreshToken();

    return guard(() async {
      try {
        if (refreshToken != null && refreshToken.isNotEmpty) {
          await ref
              .read(authRepositoryProvider)
              .logout(RefreshRequest(refreshToken: refreshToken));
        }
      } finally {
        await tokenManager.clear();

        ref.invalidate(isAuthenticatedProvider);
        ref.invalidate(userProfileProvider);
        ref.invalidate(cartProvider);
      }
    });
  }
}
