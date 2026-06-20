import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_tree.freezed.dart';
part 'category_tree.g.dart';

@freezed
abstract class CategoryTree with _$CategoryTree {
  const factory CategoryTree({
    required int id,
    required int? parentId,
    required String name,
    required String slug,
    required String slugPath,
    required CategoryTree children,
  }) = _CategoryTree;

  factory CategoryTree.fromJson(Map<String, dynamic> json) =>
      _$CategoryTreeFromJson(json);
}
