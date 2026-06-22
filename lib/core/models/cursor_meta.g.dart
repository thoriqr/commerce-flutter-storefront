// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cursor_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CursorMeta _$CursorMetaFromJson(Map<String, dynamic> json) => _CursorMeta(
  hasMore: json['hasMore'] as bool,
  nextCursor: json['nextCursor'] as String?,
);

Map<String, dynamic> _$CursorMetaToJson(_CursorMeta instance) =>
    <String, dynamic>{
      'hasMore': instance.hasMore,
      'nextCursor': instance.nextCursor,
    };
