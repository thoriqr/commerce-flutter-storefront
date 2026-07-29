import 'package:commerce_flutter_storefront/core/auth/session_manager_provider.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/providers/account_provider.dart';
import 'package:commerce_flutter_storefront/features/auth/data/models/set_password_request.dart';
import 'package:commerce_flutter_storefront/features/auth/di/auth_repository_provider.dart';
import 'package:commerce_flutter_storefront/features/shared/mixins/async_mutation_mixin.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'set_password_mutation.g.dart';

@riverpod
class SetPasswordMutation extends _$SetPasswordMutation
    with AsyncMutationMixin {
  @override
  FutureOr<void> build() {}

  Future<void> setPassword(SetPasswordRequest request) {
    return guard(() async {
      final tokens = await ref
          .read(authRepositoryProvider)
          .setPassword(request);

      await ref.read(sessionManagerProvider).save(tokens);

      ref.invalidate(userProfileProvider);
    });
  }
}
