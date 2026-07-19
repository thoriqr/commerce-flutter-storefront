// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snap_token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SnapTokenResponse _$SnapTokenResponseFromJson(Map<String, dynamic> json) =>
    _SnapTokenResponse(
      token: json['token'] as String,
      redirect_url: json['redirect_url'] as String,
    );

Map<String, dynamic> _$SnapTokenResponseToJson(_SnapTokenResponse instance) =>
    <String, dynamic>{
      'token': instance.token,
      'redirect_url': instance.redirect_url,
    };
