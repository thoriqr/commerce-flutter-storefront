// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warehouse_origin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WarehouseOrigin _$WarehouseOriginFromJson(Map<String, dynamic> json) =>
    _WarehouseOrigin(
      name: json['name'] as String,
      province: json['province'] as String,
      city: json['city'] as String,
      district: json['district'] as String,
    );

Map<String, dynamic> _$WarehouseOriginToJson(_WarehouseOrigin instance) =>
    <String, dynamic>{
      'name': instance.name,
      'province': instance.province,
      'city': instance.city,
      'district': instance.district,
    };
