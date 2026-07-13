// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_shipping_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SetShippingRequest _$SetShippingRequestFromJson(Map<String, dynamic> json) =>
    _SetShippingRequest(
      courierCode: json['courierCode'] as String,
      courierService: json['courierService'] as String,
    );

Map<String, dynamic> _$SetShippingRequestToJson(_SetShippingRequest instance) =>
    <String, dynamic>{
      'courierCode': instance.courierCode,
      'courierService': instance.courierService,
    };
