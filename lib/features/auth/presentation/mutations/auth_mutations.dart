import 'package:commerce_flutter_storefront/core/auth/session_manager_provider.dart';
import 'package:commerce_flutter_storefront/core/storage/app_preferences_provider.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/providers/account_provider.dart';
import 'package:commerce_flutter_storefront/features/auth/data/models/auth_login_result.dart';
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

class LoginMutationResult {
  const LoginMutationResult({required this.canRestorePreviousContext});

  final bool canRestorePreviousContext;
}

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

  Future<LoginMutationResult> _updateLoginSession(
    AuthLoginResult result,
  ) async {
    final preferences = ref.read(appPreferencesProvider);

    final lastUserId = await preferences.getLastUserId();

    final canRestorePreviousContext =
        lastUserId != null && lastUserId == result.userId;

    await _updateAuthenticatedSession(
      AuthTokens(
        accessToken: result.accessToken,
        refreshToken: result.refreshToken,
      ),
      invalidateCart: true,
    );

    await preferences.setLastUserId(result.userId);

    return LoginMutationResult(
      canRestorePreviousContext: canRestorePreviousContext,
    );
  }

  Future<LoginMutationResult> login(LoginRequest request) {
    return guard(() async {
      final result = await ref.read(authRepositoryProvider).login(request);

      return _updateLoginSession(result);
    });
  }

  Future<LoginMutationResult> googleLogin(GoogleLoginRequest request) {
    return guard(() async {
      final result = await ref
          .read(authRepositoryProvider)
          .googleLogin(request);

      return _updateLoginSession(result);
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
        // Always clear the local application session.
        await sessionManager.clear();

        // Best-effort Google session cleanup so the account chooser
        // is shown the next time the user signs in.
        try {
          await googleSignIn.signOut();
        } catch (_) {
          // Local application logout must not depend on Google cleanup.
        }

        // Refresh authenticated resources.
        ref.invalidate(userProfileProvider);
        ref.invalidate(cartProvider);
      }
    });
  }
}
