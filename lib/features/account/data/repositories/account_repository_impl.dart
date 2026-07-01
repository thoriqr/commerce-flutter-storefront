import 'package:commerce_flutter_storefront/core/network/api_response_extension.dart';
import 'package:commerce_flutter_storefront/features/account/data/datasource/account_api.dart';
import 'package:commerce_flutter_storefront/features/account/data/models/user_address_detail.dart';
import 'package:commerce_flutter_storefront/features/account/data/models/user_addresses.dart';
import 'package:commerce_flutter_storefront/features/account/data/models/user_profile.dart';
import 'package:commerce_flutter_storefront/features/account/domain/repositories/account_repository.dart';
import 'package:flutter/foundation.dart';

class AccountRepositoryImpl implements AccountRepository {
  const AccountRepositoryImpl(this._api);

  final AccountApi _api;

  @override
  Future<UserProfile> getUserProfile() async {
    debugPrint("========== REPOSITORY ==========");
    return await _api.getUserProfile().unwrap();
  }

  @override
  Future<UserAddresses> getUserAddresses() async {
    return await _api.getUserAddresses().unwrap();
  }

  @override
  Future<UserAddressDetail> getUserAddress(int id) async {
    return await _api.getUserAddress(id).unwrap();
  }
}
