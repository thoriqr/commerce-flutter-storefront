import 'package:commerce_flutter_storefront/core/auth/session_manager_provider.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/providers/account_provider.dart';
import 'package:commerce_flutter_storefront/features/auth/data/models/auth_tokens.dart';
import 'package:commerce_flutter_storefront/features/auth/data/models/change_password_request.dart';
import 'package:commerce_flutter_storefront/features/auth/data/models/google_login_request.dart';
import 'package:commerce_flutter_storefront/features/auth/data/models/login_request.dart';
import 'package:commerce_flutter_storefront/features/auth/data/models/refresh_request.dart';
import 'package:commerce_flutter_storefront/features/auth/data/models/set_password_request.dart';
import 'package:commerce_flutter_storefront/features/auth/di/auth_repository_provider.dart';
import 'package:commerce_flutter_storefront/features/auth/di/google_sign_in_provider.dart';
import 'package:commerce_flutter_storefront/features/cart/presentation/providers/cart_provider.dart';
import 'package:commerce_flutter_storefront/features/shared/mixins/async_mutation_mixin.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_mutations.g.dart';

@riverpod
class AuthMutations extends _$AuthMutations with AsyncMutationMixin {
  @override
  FutureOr<void> build() {}

  Future<void> _updateAuthenticatedSession(
    AuthTokens tokens, {
    bool invalidateCart = false,
  }) async {
    await ref.read(sessionManagerProvider).save(tokens);

    // Refresh authenticated user data.
    ref.invalidate(userProfileProvider);

    if (invalidateCart) {
      // Refresh the authenticated user's cart.
      ref.invalidate(cartProvider);
    }
  }

  Future<void> login(LoginRequest request) {
    return guard(() async {
      final tokens = await ref.read(authRepositoryProvider).login(request);

      await _updateAuthenticatedSession(tokens, invalidateCart: true);
    });
  }

  Future<void> googleLogin(GoogleLoginRequest request) {
    return guard(() async {
      final tokens = await ref
          .read(authRepositoryProvider)
          .googleLogin(request);

      await _updateAuthenticatedSession(tokens, invalidateCart: true);
    });
  }

  Future<void> changePassword(ChangePasswordRequest request) {
    return guard(() async {
      final tokens = await ref
          .read(authRepositoryProvider)
          .changePassword(request);

      await _updateAuthenticatedSession(tokens);
    });
  }

  Future<void> setPassword(SetPasswordRequest request) {
    return guard(() async {
      final tokens = await ref
          .read(authRepositoryProvider)
          .setPassword(request);

      await _updateAuthenticatedSession(tokens);
    });
  }

  Future<void> logout() async {
    final sessionManager = ref.read(sessionManagerProvider);
    final googleSignIn = ref.read(googleSignInProvider);

    final refreshToken = await sessionManager.getRefreshToken();

    return guard(() async {
      try {
        if (refreshToken != null && refreshToken.isNotEmpty) {
          await ref
              .read(authRepositoryProvider)
              .logout(RefreshRequest(refreshToken: refreshToken));
        }
      } finally {
        // Clear the local Google Sign-In session so the account
        // chooser is shown the next time the user signs in.
        await googleSignIn.signOut();

        // Clear the local application session.
        await sessionManager.clear();

        // Refresh authenticated resources.
        ref.invalidate(userProfileProvider);
        ref.invalidate(cartProvider);
      }
    });
  }
}
