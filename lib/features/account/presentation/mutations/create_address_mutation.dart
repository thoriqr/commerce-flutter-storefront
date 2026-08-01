import 'package:commerce_flutter_storefront/features/account/data/models/create_address_response.dart';
import 'package:commerce_flutter_storefront/features/account/data/models/upsert_address_request.dart';
import 'package:commerce_flutter_storefront/features/account/di/account_repository_provider.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/providers/account_provider.dart';
import 'package:commerce_flutter_storefront/features/shared/mixins/async_mutation_mixin.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_address_mutation.g.dart';

@riverpod
class CreateAddressMutation extends _$CreateAddressMutation
    with AsyncMutationMixin {
  @override
  FutureOr<void> build() {}

  Future<CreateAddressResponse> mutate(UpsertAddressRequest request) {
    return guard(() async {
      final response = await ref
          .read(accountRepositoryProvider)
          .createAddress(request);

      ref.invalidate(userAddressesProvider);
      ref.invalidate(userProfileProvider);

      return response;
    });
  }
}
