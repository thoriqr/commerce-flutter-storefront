// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_variant_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductVariantDetail _$ProductVariantDetailFromJson(
  Map<String, dynamic> json,
) => _ProductVariantDetail(
  id: (json['id'] as num).toInt(),
  imageKey: (json['imageKey'] as num).toInt(),
  slug: (json['slug'] as num).toInt(),
  sku: json['sku'] as String?,
  currency: json['currency'] as String,
  weight: (json['weight'] as num).toInt(),
  weightUnit: json['weightUnit'] as String,
  isAvailable: json['isAvailable'] as bool,
  warning: $enumDecodeNullable(
    _$ProductVariantDetailWarningEnumMap,
    json['warning'],
  ),
);

Map<String, dynamic> _$ProductVariantDetailToJson(
  _ProductVariantDetail instance,
) => <String, dynamic>{
  'id': instance.id,
  'imageKey': instance.imageKey,
  'slug': instance.slug,
  'sku': instance.sku,
  'currency': instance.currency,
  'weight': instance.weight,
  'weightUnit': instance.weightUnit,
  'isAvailable': instance.isAvailable,
  'warning': _$ProductVariantDetailWarningEnumMap[instance.warning],
};

const _$ProductVariantDetailWarningEnumMap = {
  ProductVariantDetailWarning.unavailable: 'UNAVAILABLE',
  ProductVariantDetailWarning.outOfStock: 'OUT_OF_STOCK',
  ProductVariantDetailWarning.lowStock: 'LOW_STOCK',
};
