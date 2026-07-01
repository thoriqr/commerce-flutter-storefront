import 'package:commerce_flutter_storefront/features/account/data/datasource/account_api.dart';
import 'package:commerce_flutter_storefront/features/account/data/models/user_address_detail.dart';
import 'package:commerce_flutter_storefront/features/account/data/models/user_addresses.dart';
import 'package:commerce_flutter_storefront/features/account/data/models/user_profile.dart';
import 'package:commerce_flutter_storefront/features/account/domain/repositories/account_repository.dart';

class AccountRepositoryImpl implements AccountRepository {
  const AccountRepositoryImpl(this._api);

  final AccountApi _api;

  @override
  Future<UserProfile> getUserProfile() async {
    final res = await _api.getUserProfile();

    return res.data;
  }

  @override
  Future<UserAddresses> getUserAddresses() async {
    final res = await _api.getUserAddresses();

    return res.data;
  }

  @override
  Future<UserAddressDetail> getUserAddress(int id) async {
    final res = await _api.getUserAddress(id);

    return res.data;
  }
}
