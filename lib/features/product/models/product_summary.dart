import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_summary.freezed.dart';
part 'product_summary.g.dart';

@freezed
abstract class ProductSummary with _$ProductSummary {
  const factory ProductSummary({
    required int id,
    required String name,
    required String slug,
    required String imageKey,
    required int displayPrice,
  }) = _ProductSummary;

  factory ProductSummary.fromJson(Map<String, dynamic> json) =>
      _$ProductSummaryFromJson(json);
}
