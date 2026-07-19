import 'package:freezed_annotation/freezed_annotation.dart';

part 'snap_token_response.freezed.dart';
part 'snap_token_response.g.dart';

@freezed
abstract class SnapTokenResponse with _$SnapTokenResponse {
  const factory SnapTokenResponse({
    required String token,
    // ignore: non_constant_identifier_names
    required String redirect_url,
  }) = _SnapTokenResponse;

  factory SnapTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$SnapTokenResponseFromJson(json);
}
