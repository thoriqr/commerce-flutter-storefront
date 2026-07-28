// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_login_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthLoginResult _$AuthLoginResultFromJson(Map<String, dynamic> json) =>
    _AuthLoginResult(
      userId: (json['userId'] as num).toInt(),
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$AuthLoginResultToJson(_AuthLoginResult instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
