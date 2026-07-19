// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response_with_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ApiResponseWithMeta<T, M> _$ApiResponseWithMetaFromJson<T, M>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
  M Function(Object? json) fromJsonM,
) => _ApiResponseWithMeta<T, M>(
  success: json['success'] as bool,
  data: fromJsonT(json['data']),
  meta: fromJsonM(json['meta']),
);

Map<String, dynamic> _$ApiResponseWithMetaToJson<T, M>(
  _ApiResponseWithMeta<T, M> instance,
  Object? Function(T value) toJsonT,
  Object? Function(M value) toJsonM,
) => <String, dynamic>{
  'success': instance.success,
  'data': toJsonT(instance.data),
  'meta': toJsonM(instance.meta),
};
