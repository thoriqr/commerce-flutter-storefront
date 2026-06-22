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
