import 'package:commerce_flutter_storefront/features/account/data/models/user_address_detail.dart';
import 'package:commerce_flutter_storefront/features/account/data/models/user_addresses.dart';
import 'package:commerce_flutter_storefront/features/account/data/models/user_profile.dart';

abstract interface class AccountRepository {
  Future<UserProfile> getUserProfile();

  Future<UserAddresses> getUserAddresses();

  Future<UserAddressDetail> getUserAddress(int id);
}
