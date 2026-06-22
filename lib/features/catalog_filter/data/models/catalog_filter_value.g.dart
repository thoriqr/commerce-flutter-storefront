// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_filter_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CatalogFilterValue _$CatalogFilterValueFromJson(Map<String, dynamic> json) =>
    _CatalogFilterValue(
      value: json['value'] as String,
      label: json['label'] as String,
      count: (json['count'] as num).toInt(),
      hexColor: json['hexColor'] as String?,
    );

Map<String, dynamic> _$CatalogFilterValueToJson(_CatalogFilterValue instance) =>
    <String, dynamic>{
      'value': instance.value,
      'label': instance.label,
      'count': instance.count,
      'hexColor': instance.hexColor,
    };
