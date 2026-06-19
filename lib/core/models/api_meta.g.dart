// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ApiMeta _$ApiMetaFromJson(Map<String, dynamic> json) => _ApiMeta(
  hasMore: json['hasMore'] as bool?,
  nextCursor: json['nextCursor'] as String?,
  page: (json['page'] as num?)?.toInt(),
  limit: (json['limit'] as num?)?.toInt(),
  total: (json['total'] as num?)?.toInt(),
  totalPages: (json['totalPages'] as num?)?.toInt(),
);

Map<String, dynamic> _$ApiMetaToJson(_ApiMeta instance) => <String, dynamic>{
  'hasMore': instance.hasMore,
  'nextCursor': instance.nextCursor,
  'page': instance.page,
  'limit': instance.limit,
  'total': instance.total,
  'totalPages': instance.totalPages,
};
