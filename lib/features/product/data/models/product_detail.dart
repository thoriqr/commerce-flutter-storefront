import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_detail.freezed.dart';
part 'product_detail.g.dart';

@freezed
abstract class ProductDetail with _$ProductDetail {
  const factory ProductDetail({
    required int id,
    required String name,
    required String slug,
    required String description,
    required bool isAvailable,
    required ProductDetailWarning? warning,
    required bool isVariant,
    required int initialVariantId,
    required ProductCategory category,
    required List<ProductDimension> dimensions,
    required List<ProductVariantOption> variants,
    required List<ProductImage> images,
  }) = _ProductDetail;

  factory ProductDetail.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailFromJson(json);
}

@freezed
abstract class ProductImage with _$ProductImage {
  const factory ProductImage({
    required int id,
    required String imageKey,
    required String slug,
    required ProductImageType type,
    required ProductImageSignature signature,
  }) = _ProductImage;

  factory ProductImage.fromJson(Map<String, dynamic> json) =>
      _$ProductImageFromJson(json);
}

@freezed
abstract class ProductImageSignature with _$ProductImageSignature {
  const factory ProductImageSignature({
    required String dimensionKey,
    required String valueKey,
  }) = _ProductImageSignature;

  factory ProductImageSignature.fromJson(Map<String, dynamic> json) =>
      _$ProductImageSignatureFromJson(json);
}

@freezed
abstract class ProductVariantOption with _$ProductVariantOption {
  const factory ProductVariantOption({
    required int id,
    required List<VariantOption> options,
  }) = _ProductVariantOption;

  factory ProductVariantOption.fromJson(Map<String, dynamic> json) =>
      _$ProductVariantOptionFromJson(json);
}

@freezed
abstract class VariantOption with _$VariantOption {
  const factory VariantOption({
    required String dimensionKey,
    required String valueKey,
  }) = _VariantOption;

  factory VariantOption.fromJson(Map<String, dynamic> json) =>
      _$VariantOptionFromJson(json);
}

@freezed
abstract class ProductCategory with _$ProductCategory {
  const factory ProductCategory({
    required String name,
    required String slugPath,
  }) = _ProductCategory;

  factory ProductCategory.fromJson(Map<String, dynamic> json) =>
      _$ProductCategoryFromJson(json);
}

@freezed
abstract class ProductDimensionValue with _$ProductDimensionValue {
  const factory ProductDimensionValue({
    required String key,
    required String label,
    required String? hexColor,
  }) = _ProductDimensionValue;

  factory ProductDimensionValue.fromJson(Map<String, dynamic> json) =>
      _$ProductDimensionValueFromJson(json);
}

@freezed
abstract class ProductDimension with _$ProductDimension {
  const factory ProductDimension({
    required String key,
    required String label,
    required List<ProductDimensionValue> values,
  }) = _ProductDimension;

  factory ProductDimension.fromJson(Map<String, dynamic> json) =>
      _$ProductDimensionFromJson(json);
}

enum ProductDetailWarning {
  @JsonValue('UNAVAILABLE')
  unavailable,
}

enum ProductImageType {
  @JsonValue('product')
  product,

  @JsonValue('variant')
  variant,
}
