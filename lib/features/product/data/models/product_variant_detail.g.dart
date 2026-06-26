// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_variant_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductVariantDetail _$ProductVariantDetailFromJson(
  Map<String, dynamic> json,
) => _ProductVariantDetail(
  variantId: (json['variantId'] as num).toInt(),
  price: (json['price'] as num).toInt(),
  stock: (json['stock'] as num).toInt(),
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
  'variantId': instance.variantId,
  'price': instance.price,
  'stock': instance.stock,
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
