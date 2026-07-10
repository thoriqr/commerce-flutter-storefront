import 'package:commerce_flutter_storefront/features/account/data/models/upsert_address_request.dart';
import 'package:commerce_flutter_storefront/features/account/di/account_repository_provider.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/providers/account_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'account_mutations.g.dart';

@riverpod
class AccountMutations extends _$AccountMutations {
  @override
  FutureOr<void> build() {}

  Future<void> updateProfile({required String displayName}) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      await ref
          .read(accountRepositoryProvider)
          .updateUserProfile(displayName: displayName);

      ref.invalidate(userProfileProvider);
    });
  }

  Future<void> createAddress(UpsertAddressRequest request) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      await ref.read(accountRepositoryProvider).createAddress(request);

      ref.invalidate(userAddressesProvider);
      ref.invalidate(userProfileProvider);
    });
  }

  Future<void> updateAddress(int id, UpsertAddressRequest request) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      await ref.read(accountRepositoryProvider).updateAddress(id, request);

      ref.invalidate(userAddressesProvider);
      ref.invalidate(userProfileProvider);
    });
  }

  Future<void> deleteAddress(int id) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      await ref.read(accountRepositoryProvider).deleteAddress(id);

      ref.invalidate(userAddressesProvider);
      ref.invalidate(userProfileProvider);
    });
  }

  Future<void> setDefaultAddress(int id) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      await ref.read(accountRepositoryProvider).setDefaultAddress(id);

      ref.invalidate(userAddressesProvider);
      ref.invalidate(userProfileProvider);
    });
  }
}
