// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserProfile _$UserProfileFromJson(Map<String, dynamic> json) => _UserProfile(
  id: (json['id'] as num).toInt(),
  email: json['email'] as String,
  displayName: json['displayName'] as String?,
  role: json['role'] as String,
  status: $enumDecode(_$UserStatusEnumMap, json['status']),
  hasPassword: json['hasPassword'] as bool,
  defaultAddress: json['defaultAddress'] == null
      ? null
      : UserDefaultAddress.fromJson(
          json['defaultAddress'] as Map<String, dynamic>,
        ),
  providers: (json['providers'] as List<dynamic>)
      .map((e) => UserProvider.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$UserProfileToJson(_UserProfile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'displayName': instance.displayName,
      'role': instance.role,
      'status': _$UserStatusEnumMap[instance.status]!,
      'hasPassword': instance.hasPassword,
      'defaultAddress': instance.defaultAddress,
      'providers': instance.providers,
    };

const _$UserStatusEnumMap = {
  UserStatus.active: 'active',
  UserStatus.suspended: 'suspended',
};

_UserDefaultAddress _$UserDefaultAddressFromJson(Map<String, dynamic> json) =>
    _UserDefaultAddress(
      id: (json['id'] as num).toInt(),
      label: json['label'] as String,
      recipientName: json['recipientName'] as String,
      phone: json['phone'] as String,
      addressLine: json['addressLine'] as String,
      cityName: json['cityName'] as String,
      provinceName: json['provinceName'] as String,
      districtName: json['districtName'] as String,
      postalCode: json['postalCode'] as String,
    );

Map<String, dynamic> _$UserDefaultAddressToJson(_UserDefaultAddress instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'recipientName': instance.recipientName,
      'phone': instance.phone,
      'addressLine': instance.addressLine,
      'cityName': instance.cityName,
      'provinceName': instance.provinceName,
      'districtName': instance.districtName,
      'postalCode': instance.postalCode,
    };

_UserProvider _$UserProviderFromJson(Map<String, dynamic> json) =>
    _UserProvider(
      provider: $enumDecode(_$UserProviderTypeEnumMap, json['provider']),
      providerEmail: json['providerEmail'] as String,
      providerDisplayName: json['providerDisplayName'] as String,
      providerAvatarUrl: json['providerAvatarUrl'] as String,
    );

Map<String, dynamic> _$UserProviderToJson(_UserProvider instance) =>
    <String, dynamic>{
      'provider': _$UserProviderTypeEnumMap[instance.provider]!,
      'providerEmail': instance.providerEmail,
      'providerDisplayName': instance.providerDisplayName,
      'providerAvatarUrl': instance.providerAvatarUrl,
    };

const _$UserProviderTypeEnumMap = {
  UserProviderType.google: 'google',
  UserProviderType.github: 'github',
};
