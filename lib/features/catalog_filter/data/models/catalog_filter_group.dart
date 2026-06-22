import 'package:commerce_flutter_storefront/features/catalog_filter/data/models/catalog_filter_value.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_filter_group.freezed.dart';
part 'catalog_filter_group.g.dart';

@freezed
abstract class CatalogFilterGroup with _$CatalogFilterGroup {
  const factory CatalogFilterGroup({
    required String name,
    required String label,
    required List<CatalogFilterValue> values,
  }) = _CatalogFilterGroup;

  factory CatalogFilterGroup.fromJson(Map<String, dynamic> json) =>
      _$CatalogFilterGroupFromJson(json);
}
