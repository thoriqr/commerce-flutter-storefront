// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductDetail _$ProductDetailFromJson(
  Map<String, dynamic> json,
) => _ProductDetail(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  slug: json['slug'] as String,
  description: json['description'] as String,
  isAvailable: json['isAvailable'] as bool,
  warning: $enumDecodeNullable(_$ProductDetailWarningEnumMap, json['warning']),
  isVariant: json['isVariant'] as bool,
  initialVariantId: (json['initialVariantId'] as num).toInt(),
  category: ProductCategory.fromJson(json['category'] as Map<String, dynamic>),
  dimensions: (json['dimensions'] as List<dynamic>)
      .map((e) => ProductDimension.fromJson(e as Map<String, dynamic>))
      .toList(),
  variants: (json['variants'] as List<dynamic>)
      .map((e) => ProductVariantOption.fromJson(e as Map<String, dynamic>))
      .toList(),
  images: (json['images'] as List<dynamic>)
      .map((e) => ProductImage.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ProductDetailToJson(_ProductDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
      'isAvailable': instance.isAvailable,
      'warning': _$ProductDetailWarningEnumMap[instance.warning],
      'isVariant': instance.isVariant,
      'initialVariantId': instance.initialVariantId,
      'category': instance.category,
      'dimensions': instance.dimensions,
      'variants': instance.variants,
      'images': instance.images,
    };

const _$ProductDetailWarningEnumMap = {
  ProductDetailWarning.unavailable: 'UNAVAILABLE',
};

_ProductImage _$ProductImageFromJson(Map<String, dynamic> json) =>
    _ProductImage(
      id: (json['id'] as num).toInt(),
      imageKey: json['imageKey'] as String,
      type: $enumDecode(_$ProductImageTypeEnumMap, json['type']),
      signature: json['signature'] == null
          ? null
          : ProductImageSignature.fromJson(
              json['signature'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$ProductImageToJson(_ProductImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageKey': instance.imageKey,
      'type': _$ProductImageTypeEnumMap[instance.type]!,
      'signature': instance.signature,
    };

const _$ProductImageTypeEnumMap = {
  ProductImageType.product: 'product',
  ProductImageType.variant: 'variant',
};

_ProductImageSignature _$ProductImageSignatureFromJson(
  Map<String, dynamic> json,
) => _ProductImageSignature(
  dimensionKey: json['dimensionKey'] as String,
  valueKey: json['valueKey'] as String,
);

Map<String, dynamic> _$ProductImageSignatureToJson(
  _ProductImageSignature instance,
) => <String, dynamic>{
  'dimensionKey': instance.dimensionKey,
  'valueKey': instance.valueKey,
};

_ProductVariantOption _$ProductVariantOptionFromJson(
  Map<String, dynamic> json,
) => _ProductVariantOption(
  id: (json['id'] as num).toInt(),
  options: (json['options'] as List<dynamic>)
      .map((e) => VariantOption.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ProductVariantOptionToJson(
  _ProductVariantOption instance,
) => <String, dynamic>{'id': instance.id, 'options': instance.options};

_VariantOption _$VariantOptionFromJson(Map<String, dynamic> json) =>
    _VariantOption(
      dimensionKey: json['dimensionKey'] as String,
      valueKey: json['valueKey'] as String,
    );

Map<String, dynamic> _$VariantOptionToJson(_VariantOption instance) =>
    <String, dynamic>{
      'dimensionKey': instance.dimensionKey,
      'valueKey': instance.valueKey,
    };

_ProductCategory _$ProductCategoryFromJson(Map<String, dynamic> json) =>
    _ProductCategory(
      name: json['name'] as String,
      slugPath: json['slugPath'] as String,
    );

Map<String, dynamic> _$ProductCategoryToJson(_ProductCategory instance) =>
    <String, dynamic>{'name': instance.name, 'slugPath': instance.slugPath};

_ProductDimensionValue _$ProductDimensionValueFromJson(
  Map<String, dynamic> json,
) => _ProductDimensionValue(
  key: json['key'] as String,
  label: json['label'] as String,
  hexColor: json['hexColor'] as String?,
);

Map<String, dynamic> _$ProductDimensionValueToJson(
  _ProductDimensionValue instance,
) => <String, dynamic>{
  'key': instance.key,
  'label': instance.label,
  'hexColor': instance.hexColor,
};

_ProductDimension _$ProductDimensionFromJson(Map<String, dynamic> json) =>
    _ProductDimension(
      key: json['key'] as String,
      label: json['label'] as String,
      values: (json['values'] as List<dynamic>)
          .map((e) => ProductDimensionValue.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductDimensionToJson(_ProductDimension instance) =>
    <String, dynamic>{
      'key': instance.key,
      'label': instance.label,
      'values': instance.values,
    };
