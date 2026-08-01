import 'package:commerce_flutter_storefront/features/account/data/models/upsert_profile_request.dart';
import 'package:commerce_flutter_storefront/features/account/di/account_repository_provider.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/providers/account_provider.dart';
import 'package:commerce_flutter_storefront/features/shared/mixins/async_mutation_mixin.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'update_profile_mutation.g.dart';

@riverpod
class UpdateProfileMutation extends _$UpdateProfileMutation
    with AsyncMutationMixin {
  @override
  FutureOr<void> build() {}

  Future<void> mutate(UpsertProfileRequest request) {
    return guard(() async {
      await ref.read(accountRepositoryProvider).updateUserProfile(request);

      ref.invalidate(userProfileProvider);
    });
  }
}
