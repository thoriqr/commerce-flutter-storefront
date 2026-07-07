// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upsert_address_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpsertAddressRequest _$UpsertAddressRequestFromJson(
  Map<String, dynamic> json,
) => _UpsertAddressRequest(
  label: json['label'] as String,
  recipientName: json['recipientName'] as String,
  shippingProvinceId: json['shippingProvinceId'] as String,
  shippingCityId: json['shippingCityId'] as String,
  shippingDistrictId: json['shippingDistrictId'] as String,
  addressLine: json['addressLine'] as String,
  phone: json['phone'] as String,
  postalCode: json['postalCode'] as String,
);

Map<String, dynamic> _$UpsertAddressRequestToJson(
  _UpsertAddressRequest instance,
) => <String, dynamic>{
  'label': instance.label,
  'recipientName': instance.recipientName,
  'shippingProvinceId': instance.shippingProvinceId,
  'shippingCityId': instance.shippingCityId,
  'shippingDistrictId': instance.shippingDistrictId,
  'addressLine': instance.addressLine,
  'phone': instance.phone,
  'postalCode': instance.postalCode,
};
