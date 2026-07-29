import 'package:commerce_flutter_storefront/core/auth/session_manager_provider.dart';
import 'package:commerce_flutter_storefront/core/storage/app_preferences_provider.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/providers/account_provider.dart';
import 'package:commerce_flutter_storefront/features/auth/data/models/auth_login_result.dart';
import 'package:commerce_flutter_storefront/features/auth/data/models/auth_tokens.dart';
import 'package:commerce_flutter_storefront/features/auth/data/models/google_login_request.dart';
import 'package:commerce_flutter_storefront/features/auth/data/models/login_request.dart';
import 'package:commerce_flutter_storefront/features/auth/di/auth_repository_provider.dart';
import 'package:commerce_flutter_storefront/features/auth/presentation/providers/auth_transition_provider.dart';
import 'package:commerce_flutter_storefront/features/cart/presentation/providers/cart_provider.dart';
import 'package:commerce_flutter_storefront/features/shared/mixins/async_mutation_mixin.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_mutation.g.dart';

class LoginMutationResult {
  const LoginMutationResult({required this.canRestorePreviousContext});

  final bool canRestorePreviousContext;
}

@Riverpod(keepAlive: true)
class LoginMutation extends _$LoginMutation with AsyncMutationMixin {
  @override
  FutureOr<void> build() {}

  Future<void> _updateAuthenticatedSession(
    AuthTokens tokens, {
    bool invalidateCart = false,
  }) async {
    await ref.read(sessionManagerProvider).save(tokens);

    ref.invalidate(userProfileProvider);

    if (invalidateCart) {
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

    ref
        .read(authTransitionStateProvider.notifier)
        .startResolving(canRestorePreviousContext: canRestorePreviousContext);

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
      final transition = ref.read(authTransitionStateProvider.notifier);

      transition.startAuthenticating();

      try {
        final result = await ref.read(authRepositoryProvider).login(request);

        return await _updateLoginSession(result);
      } catch (_) {
        transition.finish();
        rethrow;
      }
    });
  }

  Future<LoginMutationResult> googleLogin(GoogleLoginRequest request) {
    return guard(() async {
      final transition = ref.read(authTransitionStateProvider.notifier);

      transition.startAuthenticating();

      try {
        final result = await ref
            .read(authRepositoryProvider)
            .googleLogin(request);

        return await _updateLoginSession(result);
      } catch (_) {
        transition.finish();
        rethrow;
      }
    });
  }
}
