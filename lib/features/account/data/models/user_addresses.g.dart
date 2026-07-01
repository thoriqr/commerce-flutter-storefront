// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_addresses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserAddresses _$UserAddressesFromJson(Map<String, dynamic> json) =>
    _UserAddresses(
      addresses: (json['addresses'] as List<dynamic>)
          .map((e) => UserAddress.fromJson(e as Map<String, dynamic>))
          .toList(),
      limit: (json['limit'] as num).toInt(),
    );

Map<String, dynamic> _$UserAddressesToJson(_UserAddresses instance) =>
    <String, dynamic>{'addresses': instance.addresses, 'limit': instance.limit};

_UserAddress _$UserAddressFromJson(Map<String, dynamic> json) => _UserAddress(
  id: (json['id'] as num).toInt(),
  label: json['label'] as String,
  recipientName: json['recipientName'] as String,
  phone: json['phone'] as String,
  addressLine: json['addressLine'] as String,
  cityName: json['cityName'] as String,
  provinceName: json['provinceName'] as String,
  districtName: json['districtName'] as String,
  postalCode: json['postalCode'] as String,
  isDefault: json['isDefault'] as bool,
);

Map<String, dynamic> _$UserAddressToJson(_UserAddress instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'recipientName': instance.recipientName,
      'phone': instance.phone,
      'addressLine': instance.addressLine,
      'cityName': instance.cityName,
      'provinceName': instance.provinceName,
      'districtName': instance.districtName,
      'postalCode': instance.postalCode,
      'isDefault': instance.isDefault,
    };
