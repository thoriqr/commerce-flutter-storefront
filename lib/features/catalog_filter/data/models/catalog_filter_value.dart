import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_filter_value.freezed.dart';
part 'catalog_filter_value.g.dart';

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
