import 'package:freezed_annotation/freezed_annotation.dart';

part 'cursor_meta.freezed.dart';
part 'cursor_meta.g.dart';

@freezed
abstract class CursorMeta with _$CursorMeta {
  const factory CursorMeta({required bool hasMore, String? nextCursor}) =
      _CursorMeta;

  factory CursorMeta.fromJson(Map<String, dynamic> json) =>
      _$CursorMetaFromJson(json);
}
