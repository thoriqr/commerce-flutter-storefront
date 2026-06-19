import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection_detail.freezed.dart';
part 'collection_detail.g.dart';

@freezed
abstract class CollectionDetail with _$CollectionDetail {
  const factory CollectionDetail({
    required int id,
    required String name,
    required String slug,
    required String description,
  }) = _CollectionDetail;

  factory CollectionDetail.fromJson(Map<String, dynamic> json) =>
      _$CollectionDetailFromJson(json);
}
