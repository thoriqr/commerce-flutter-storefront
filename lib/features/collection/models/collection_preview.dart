import 'package:commerce_flutter_storefront/features/product/models/product_summary.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection_preview.freezed.dart';
part 'collection_preview.g.dart';

@freezed
abstract class CollectionPreview with _$CollectionPreview {
  const factory CollectionPreview({
    required int id,
    required String name,
    required String slug,
    required bool hasMoreProducts,
    required List<ProductSummary> products,
  }) = _CollectionPreview;

  factory CollectionPreview.fromJson(Map<String, dynamic> json) =>
      _$CollectionPreviewFromJson(json);
}
