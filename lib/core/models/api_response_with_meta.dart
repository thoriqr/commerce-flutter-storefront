import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response_with_meta.freezed.dart';
part 'api_response_with_meta.g.dart';

@Freezed(genericArgumentFactories: true)
abstract class ApiResponseWithMeta<T, M> with _$ApiResponseWithMeta<T, M> {
  const factory ApiResponseWithMeta({
    required bool success,
    required T data,
    required M meta,
  }) = _ApiResponseWithMeta<T, M>;

  factory ApiResponseWithMeta.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
    M Function(Object?) fromJsonM,
  ) => _$ApiResponseWithMetaFromJson(json, fromJsonT, fromJsonM);
}
