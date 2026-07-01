import 'package:commerce_flutter_storefront/features/account/data/models/user_address_detail.dart';
import 'package:commerce_flutter_storefront/features/account/data/models/user_addresses.dart';
import 'package:commerce_flutter_storefront/features/account/data/models/user_profile.dart';
import 'package:commerce_flutter_storefront/features/account/di/account_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'account_provider.g.dart';

@riverpod
Future<UserProfile> userProfile(Ref ref) {
  return ref.read(accountRepositoryProvider).getUserProfile();
}

@riverpod
Future<UserAddresses> userAddresses(Ref ref) {
  return ref.read(accountRepositoryProvider).getUserAddresses();
}

@riverpod
Future<UserAddressDetail> userAddress(Ref ref, int id) {
  return ref.read(accountRepositoryProvider).getUserAddress(id);
}
