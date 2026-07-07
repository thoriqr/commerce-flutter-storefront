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

  Future<void> createAddress({
    required String label,
    required String recipientName,
    required String shippingProvinceId,
    required String shippingCityId,
    required String shippingDistrictId,
    required String addressLine,
    required String phone,
    required String postalCode,
  }) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      await ref
          .read(accountRepositoryProvider)
          .createAddress(
            label: label,
            recipientName: recipientName,
            shippingProvinceId: shippingProvinceId,
            shippingCityId: shippingCityId,
            shippingDistrictId: shippingDistrictId,
            addressLine: addressLine,
            phone: phone,
            postalCode: postalCode,
          );

      ref.invalidate(userAddressesProvider);
      ref.invalidate(userProfileProvider);
    });
  }

  Future<void> updateAddress(
    int id, {
    required String label,
    required String recipientName,
    required String shippingProvinceId,
    required String shippingCityId,
    required String shippingDistrictId,
    required String addressLine,
    required String phone,
    required String postalCode,
  }) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      await ref
          .read(accountRepositoryProvider)
          .updateAddress(
            id,
            label: label,
            recipientName: recipientName,
            shippingProvinceId: shippingProvinceId,
            shippingCityId: shippingCityId,
            shippingDistrictId: shippingDistrictId,
            addressLine: addressLine,
            phone: phone,
            postalCode: postalCode,
          );

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
