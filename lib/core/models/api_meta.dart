import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_meta.freezed.dart';
part 'api_meta.g.dart';

@freezed
abstract class ApiMeta with _$ApiMeta {
  const factory ApiMeta({
    bool? hasMore,
    String? nextCursor,

    int? page,
    int? limit,
    int? total,
    int? totalPages,
  }) = _ApiMeta;

  factory ApiMeta.fromJson(Map<String, dynamic> json) =>
      _$ApiMetaFromJson(json);
}
