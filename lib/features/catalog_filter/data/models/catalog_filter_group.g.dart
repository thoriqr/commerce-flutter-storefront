// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_filter_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CatalogFilterGroup _$CatalogFilterGroupFromJson(Map<String, dynamic> json) =>
    _CatalogFilterGroup(
      name: json['name'] as String,
      label: json['label'] as String,
      values: (json['values'] as List<dynamic>)
          .map((e) => CatalogFilterValue.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CatalogFilterGroupToJson(_CatalogFilterGroup instance) =>
    <String, dynamic>{
      'name': instance.name,
      'label': instance.label,
      'values': instance.values,
    };

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
