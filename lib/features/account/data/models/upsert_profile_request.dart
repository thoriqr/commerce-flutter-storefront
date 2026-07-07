import 'package:freezed_annotation/freezed_annotation.dart';

part 'upsert_profile_request.freezed.dart';
part 'upsert_profile_request.g.dart';

@freezed
abstract class UpsertProfileRequest with _$UpsertProfileRequest {
  const factory UpsertProfileRequest({required String displayName}) =
      _UpsertProfileRequest;

  factory UpsertProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$UpsertProfileRequestFromJson(json);
}
