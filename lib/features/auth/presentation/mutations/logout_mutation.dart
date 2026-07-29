import 'package:commerce_flutter_storefront/core/auth/session_manager_provider.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/providers/account_provider.dart';
import 'package:commerce_flutter_storefront/features/auth/data/models/refresh_request.dart';
import 'package:commerce_flutter_storefront/features/auth/di/auth_repository_provider.dart';
import 'package:commerce_flutter_storefront/features/auth/di/google_sign_in_provider.dart';
import 'package:commerce_flutter_storefront/features/cart/presentation/providers/cart_provider.dart';
import 'package:commerce_flutter_storefront/features/shared/mixins/async_mutation_mixin.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'logout_mutation.g.dart';

@Riverpod(keepAlive: true)
class LogoutMutation extends _$LogoutMutation with AsyncMutationMixin {
  @override
  FutureOr<void> build() {}

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
        await sessionManager.clear();

        try {
          await googleSignIn.signOut();
        } catch (_) {
          // Local application logout must not depend on Google cleanup.
        }

        ref.invalidate(userProfileProvider);
        ref.invalidate(cartProvider);
      }
    });
  }
}
