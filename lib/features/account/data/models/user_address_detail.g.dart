// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_address_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserAddressDetail _$UserAddressDetailFromJson(Map<String, dynamic> json) =>
    _UserAddressDetail(
      label: json['label'] as String,
      recipientName: json['recipientName'] as String,
      shippingProvinceId: json['shippingProvinceId'] as String,
      shippingCityId: json['shippingCityId'] as String,
      shippingDistrictId: json['shippingDistrictId'] as String,
      addressLine: json['addressLine'] as String,
      isDefault: json['isDefault'] as bool,
      postalCode: json['postalCode'] as String,
    );

Map<String, dynamic> _$UserAddressDetailToJson(_UserAddressDetail instance) =>
    <String, dynamic>{
      'label': instance.label,
      'recipientName': instance.recipientName,
      'shippingProvinceId': instance.shippingProvinceId,
      'shippingCityId': instance.shippingCityId,
      'shippingDistrictId': instance.shippingDistrictId,
      'addressLine': instance.addressLine,
      'isDefault': instance.isDefault,
      'postalCode': instance.postalCode,
    };
