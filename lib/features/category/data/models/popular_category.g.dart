// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PopularCategory _$PopularCategoryFromJson(Map<String, dynamic> json) =>
    _PopularCategory(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      slug: json['slug'] as String,
      slugPath: json['slugPath'] as String,
      totalSold: (json['totalSold'] as num).toInt(),
    );

Map<String, dynamic> _$PopularCategoryToJson(_PopularCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'slugPath': instance.slugPath,
      'totalSold': instance.totalSold,
    };
