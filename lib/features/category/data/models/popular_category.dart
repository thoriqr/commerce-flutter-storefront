import 'package:freezed_annotation/freezed_annotation.dart';

part 'popular_category.freezed.dart';
part 'popular_category.g.dart';

@freezed
abstract class PopularCategory with _$PopularCategory {
  const factory PopularCategory({
    required int id,
    required String name,
    required String slug,
    required String slugPath,
    required int totalSold,
  }) = _PopularCategory;

  factory PopularCategory.fromJson(Map<String, dynamic> json) =>
      _$PopularCategoryFromJson(json);
}
