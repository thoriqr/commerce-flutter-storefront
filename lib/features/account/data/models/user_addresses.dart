import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_addresses.freezed.dart';
part 'user_addresses.g.dart';

@freezed
abstract class UserAddresses with _$UserAddresses {
  const factory UserAddresses({
    required List<UserAddress> addresses,
    required int limit,
  }) = _UserAddresses;

  factory UserAddresses.fromJson(Map<String, dynamic> json) =>
      _$UserAddressesFromJson(json);
}

@freezed
abstract class UserAddress with _$UserAddress {
  const factory UserAddress({
    required int id,
    required String label,
    required String recipientName,
    required String phone,
    required String addressLine,
    required String cityName,
    required String provinceName,
    required String districtName,
    required String postalCode,
    required bool isDefault,
  }) = _UserAddress;

  factory UserAddress.fromJson(Map<String, dynamic> json) =>
      _$UserAddressFromJson(json);
}
