import 'package:commerce_flutter_storefront/features/account/data/models/user_address_detail.dart';
import 'package:commerce_flutter_storefront/features/account/data/models/user_addresses.dart';
import 'package:commerce_flutter_storefront/features/account/data/models/user_profile.dart';

abstract interface class AccountRepository {
  Future<UserProfile> getUserProfile();

  Future<void> updateUserProfile({required String displayName});

  Future<UserAddresses> getUserAddresses();

  Future<UserAddressDetail> getUserAddress(int id);

  Future<void> createAddress({
    required String label,
    required String recipientName,
    required String shippingProvinceId,
    required String shippingCityId,
    required String shippingDistrictId,
    required String addressLine,
    required String phone,
    required String postalCode,
  });

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
  });

  Future<void> deleteAddress(int id);

  Future<void> setDefaultAddress(int id);
}
