import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_login_result.freezed.dart';
part 'auth_login_result.g.dart';

@freezed
abstract class AuthLoginResult with _$AuthLoginResult {
  const factory AuthLoginResult({
    required int userId,
    required String accessToken,
    required String refreshToken,
  }) = _AuthLoginResult;

  factory AuthLoginResult.fromJson(Map<String, dynamic> json) =>
      _$AuthLoginResultFromJson(json);
}
