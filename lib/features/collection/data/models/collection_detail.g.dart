// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CollectionDetail _$CollectionDetailFromJson(Map<String, dynamic> json) =>
    _CollectionDetail(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      slug: json['slug'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$CollectionDetailToJson(_CollectionDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
    };
