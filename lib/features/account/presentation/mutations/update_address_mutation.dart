import 'package:commerce_flutter_storefront/features/account/data/models/upsert_address_request.dart';
import 'package:commerce_flutter_storefront/features/account/di/account_repository_provider.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/providers/account_provider.dart';
import 'package:commerce_flutter_storefront/features/shared/mixins/async_mutation_mixin.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'update_address_mutation.g.dart';

@riverpod
class UpdateAddressMutation extends _$UpdateAddressMutation
    with AsyncMutationMixin {
  @override
  FutureOr<void> build() {}

  Future<void> mutate(int id, UpsertAddressRequest request) {
    return guard(() async {
      await ref.read(accountRepositoryProvider).updateAddress(id, request);

      ref.invalidate(userAddressesProvider);
      ref.invalidate(userProfileProvider);
    });
  }
}
