import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

enum UserProviderType {
  @JsonValue('GOOGLE')
  google('GOOGLE'),

  @JsonValue('GITHUB')
  github('GITHUB');

  const UserProviderType(this.value);

  final String value;
}

enum UserStatus {
  @JsonValue('ACTIVE')
  active('ACTIVE'),

  @JsonValue('SUSPENDED')
  suspended('SUSPENDED');

  const UserStatus(this.value);

  final String value;
}

@freezed
abstract class UserProfile with _$UserProfile {
  const factory UserProfile({
    required int id,
    required String email,
    required String? displayName,
    required String role,
    required UserStatus status,
    required bool hasPassword,
    required UserDefaultAddress? defaultAddress,
    required List<UserProvider> providers,
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
}

@freezed
abstract class UserDefaultAddress with _$UserDefaultAddress {
  const factory UserDefaultAddress({
    required int id,
    required String label,
    required String recipientName,
    required String phone,
    required String addressLine,
    required String cityName,
    required String provinceName,
    required String districtName,
    required String postalCode,
  }) = _UserDefaultAddress;

  factory UserDefaultAddress.fromJson(Map<String, dynamic> json) =>
      _$UserDefaultAddressFromJson(json);
}

@freezed
abstract class UserProvider with _$UserProvider {
  const factory UserProvider({
    required UserProviderType provider,
    required String providerEmail,
    required String providerDisplayName,
    required String providerAvatarUrl,
  }) = _UserProvider;

  factory UserProvider.fromJson(Map<String, dynamic> json) =>
      _$UserProviderFromJson(json);
}
