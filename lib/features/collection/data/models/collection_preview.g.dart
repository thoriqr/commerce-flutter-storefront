// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_preview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CollectionPreview _$CollectionPreviewFromJson(Map<String, dynamic> json) =>
    _CollectionPreview(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      slug: json['slug'] as String,
      hasMoreProducts: json['hasMoreProducts'] as bool,
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductSummary.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CollectionPreviewToJson(_CollectionPreview instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'hasMoreProducts': instance.hasMoreProducts,
      'products': instance.products,
    };
