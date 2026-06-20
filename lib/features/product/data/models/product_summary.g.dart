// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductSummary _$ProductSummaryFromJson(Map<String, dynamic> json) =>
    _ProductSummary(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      slug: json['slug'] as String,
      imageKey: json['imageKey'] as String,
      displayPrice: (json['displayPrice'] as num).toInt(),
    );

Map<String, dynamic> _$ProductSummaryToJson(_ProductSummary instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'imageKey': instance.imageKey,
      'displayPrice': instance.displayPrice,
    };
