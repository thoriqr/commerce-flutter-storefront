import 'package:commerce_flutter_storefront/core/models/cursor_meta.dart';
import 'package:commerce_flutter_storefront/features/product/data/models/product_summary.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_listing_result.freezed.dart';
part 'product_listing_result.g.dart';

@freezed
abstract class ProductListingResult with _$ProductListingResult {
  const factory ProductListingResult({
    required List<ProductSummary> products,
    required CursorMeta meta,
  }) = _ProductListingResult;

  factory ProductListingResult.fromJson(Map<String, dynamic> json) =>
      _$ProductListingResultFromJson(json);
}
