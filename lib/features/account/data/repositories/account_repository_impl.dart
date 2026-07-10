import 'package:commerce_flutter_storefront/core/network/api_response_extension.dart';
import 'package:commerce_flutter_storefront/features/account/data/datasource/account_api.dart';
import 'package:commerce_flutter_storefront/features/account/data/models/upsert_address_request.dart';
import 'package:commerce_flutter_storefront/features/account/data/models/upsert_profile_request.dart';
import 'package:commerce_flutter_storefront/features/account/data/models/user_address_detail.dart';
import 'package:commerce_flutter_storefront/features/account/data/models/user_addresses.dart';
import 'package:commerce_flutter_storefront/features/account/data/models/user_profile.dart';
import 'package:commerce_flutter_storefront/features/account/domain/repositories/account_repository.dart';

class AccountRepositoryImpl implements AccountRepository {
  const AccountRepositoryImpl(this._api);

  final AccountApi _api;

  @override
  Future<UserProfile> getUserProfile() async {
    return await _api.getUserProfile().unwrap();
  }

  @override
  Future<void> updateUserProfile({required String displayName}) {
    return _api
        .updateUserProfile(UpsertProfileRequest(displayName: displayName))
        .unwrap();
  }

  @override
  Future<UserAddresses> getUserAddresses() async {
    return await _api.getUserAddresses().unwrap();
  }

  @override
  Future<UserAddressDetail> getUserAddress(int id) async {
    return await _api.getUserAddress(id).unwrap();
  }

  @override
  Future<void> createAddress(UpsertAddressRequest request) {
    return _api.createAddress(request).unwrap();
  }

  @override
  Future<void> updateAddress(int id, UpsertAddressRequest request) {
    return _api.updateAddress(id, request).unwrap();
  }

  @override
  Future<void> deleteAddress(int id) {
    return _api.deleteAddress(id).unwrap();
  }

  @override
  Future<void> setDefaultAddress(int id) {
    return _api.setDefaultAddress(id).unwrap();
  }
}
