// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_listing_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductListingResult _$ProductListingResultFromJson(
  Map<String, dynamic> json,
) => _ProductListingResult(
  products: (json['products'] as List<dynamic>)
      .map((e) => ProductSummary.fromJson(e as Map<String, dynamic>))
      .toList(),
  meta: CursorMeta.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ProductListingResultToJson(
  _ProductListingResult instance,
) => <String, dynamic>{'products': instance.products, 'meta': instance.meta};
