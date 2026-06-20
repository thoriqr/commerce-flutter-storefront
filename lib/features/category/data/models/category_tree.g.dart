// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_tree.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CategoryTree _$CategoryTreeFromJson(Map<String, dynamic> json) =>
    _CategoryTree(
      id: (json['id'] as num).toInt(),
      parentId: (json['parentId'] as num?)?.toInt(),
      name: json['name'] as String,
      slug: json['slug'] as String,
      slugPath: json['slugPath'] as String,
      children: CategoryTree.fromJson(json['children'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoryTreeToJson(_CategoryTree instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parentId': instance.parentId,
      'name': instance.name,
      'slug': instance.slug,
      'slugPath': instance.slugPath,
      'children': instance.children,
    };
