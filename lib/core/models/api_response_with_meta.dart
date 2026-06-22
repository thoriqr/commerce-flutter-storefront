import 'package:commerce_flutter_storefront/core/models/cursor_meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response_with_meta.freezed.dart';
part 'api_response_with_meta.g.dart';

@Freezed(genericArgumentFactories: true)
abstract class ApiResponseWithMeta<T> with _$ApiResponseWithMeta<T> {
  const factory ApiResponseWithMeta({
    required bool success,
    required T data,
    required CursorMeta meta,
  }) = _ApiResponseWithMeta<T>;

  factory ApiResponseWithMeta.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) => _$ApiResponseWithMetaFromJson(json, fromJsonT);
}
