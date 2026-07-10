import 'package:commerce_flutter_storefront/features/account/data/models/upsert_address_request.dart';
import 'package:commerce_flutter_storefront/features/account/data/models/user_address_detail.dart';
import 'package:commerce_flutter_storefront/features/account/data/models/user_addresses.dart';
import 'package:commerce_flutter_storefront/features/account/data/models/user_profile.dart';

abstract interface class AccountRepository {
  Future<UserProfile> getUserProfile();

  Future<void> updateUserProfile({required String displayName});

  Future<UserAddresses> getUserAddresses();

  Future<UserAddressDetail> getUserAddress(int id);

  Future<void> createAddress(UpsertAddressRequest request);

  Future<void> updateAddress(int id, UpsertAddressRequest request);

  Future<void> deleteAddress(int id);

  Future<void> setDefaultAddress(int id);
}
