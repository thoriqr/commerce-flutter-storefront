// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response_with_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ApiResponseWithMeta<T> _$ApiResponseWithMetaFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _ApiResponseWithMeta<T>(
  success: json['success'] as bool,
  data: fromJsonT(json['data']),
  meta: CursorMeta.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ApiResponseWithMetaToJson<T>(
  _ApiResponseWithMeta<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'success': instance.success,
  'data': toJsonT(instance.data),
  'meta': instance.meta,
};
