import 'package:commerce_flutter_storefront/features/account/di/account_repository_provider.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/providers/account_provider.dart';
import 'package:commerce_flutter_storefront/features/shared/mixins/async_mutation_mixin.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'delete_address_mutation.g.dart';

@riverpod
class DeleteAddressMutation extends _$DeleteAddressMutation
    with AsyncMutationMixin {
  @override
  FutureOr<void> build() {}

  Future<void> mutate(int id) {
    return run(() async {
      await ref.read(accountRepositoryProvider).deleteAddress(id);

      ref.invalidate(userAddressesProvider);
      ref.invalidate(userProfileProvider);
    });
  }
}
