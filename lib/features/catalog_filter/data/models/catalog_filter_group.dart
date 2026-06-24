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

@freezed
abstract class CatalogFilterValue with _$CatalogFilterValue {
  const factory CatalogFilterValue({
    required String value,
    required String label,
    required int count,
    required String? hexColor,
  }) = _CatalogFilterValue;

  factory CatalogFilterValue.fromJson(Map<String, dynamic> json) =>
      _$CatalogFilterValueFromJson(json);
}
