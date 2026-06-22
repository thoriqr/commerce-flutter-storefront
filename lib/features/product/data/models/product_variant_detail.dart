import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_variant_detail.freezed.dart';
part 'product_variant_detail.g.dart';

@freezed
abstract class ProductVariantDetail with _$ProductVariantDetail {
  const factory ProductVariantDetail({
    required int id,
    required int imageKey,
    required int slug,
    required String? sku,
    required String currency,
    required int weight,
    required String weightUnit,
    required bool isAvailable,
    required ProductVariantDetailWarning? warning,
  }) = _ProductVariantDetail;

  factory ProductVariantDetail.fromJson(Map<String, dynamic> json) =>
      _$ProductVariantDetailFromJson(json);
}

enum ProductVariantDetailWarning {
  @JsonValue('UNAVAILABLE')
  unavailable,

  @JsonValue('OUT_OF_STOCK')
  outOfStock,

  @JsonValue('LOW_STOCK')
  lowStock,
}
