import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_detail.freezed.dart';
part 'category_detail.g.dart';

@freezed
abstract class CategoryDetail with _$CategoryDetail {
  const factory CategoryDetail({
    required CategoryInfo category,
    required List<CategorySummary> breadcrumb,
    required List<CategorySummary> children,
  }) = _CategoryDetail;

  factory CategoryDetail.fromJson(Map<String, dynamic> json) =>
      _$CategoryDetailFromJson(json);
}

@freezed
abstract class CategoryInfo with _$CategoryInfo {
  const factory CategoryInfo({
    required int id,
    required String name,
    required String description,
    required String slugPath,
  }) = _CategoryInfo;

  factory CategoryInfo.fromJson(Map<String, dynamic> json) =>
      _$CategoryInfoFromJson(json);
}

@freezed
abstract class CategorySummary with _$CategorySummary {
  const factory CategorySummary({
    required int id,
    required String name,
    required String slugPath,
  }) = _CategorySummary;

  factory CategorySummary.fromJson(Map<String, dynamic> json) =>
      _$CategorySummaryFromJson(json);
}
