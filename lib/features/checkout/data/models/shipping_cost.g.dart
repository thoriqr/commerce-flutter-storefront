// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_cost.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ShippingCost _$ShippingCostFromJson(Map<String, dynamic> json) =>
    _ShippingCost(
      courier: json['courier'] as String,
      services: (json['services'] as List<dynamic>)
          .map((e) => ShippingService.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ShippingCostToJson(_ShippingCost instance) =>
    <String, dynamic>{
      'courier': instance.courier,
      'services': instance.services,
    };

_ShippingService _$ShippingServiceFromJson(Map<String, dynamic> json) =>
    _ShippingService(
      name: json['name'] as String,
      code: json['code'] as String,
      service: json['service'] as String,
      description: json['description'] as String,
      cost: (json['cost'] as num).toInt(),
      etd: json['etd'] as String,
    );

Map<String, dynamic> _$ShippingServiceToJson(_ShippingService instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'service': instance.service,
      'description': instance.description,
      'cost': instance.cost,
      'etd': instance.etd,
    };
