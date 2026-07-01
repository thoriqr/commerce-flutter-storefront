// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserProfile {

 int get id; String get email; String? get displayName; String get role; UserStatus get status; bool get hasPassword; UserDefaultAddress? get defaultAddress; List<UserProvider> get providers;
/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserProfileCopyWith<UserProfile> get copyWith => _$UserProfileCopyWithImpl<UserProfile>(this as UserProfile, _$identity);

  /// Serializes this UserProfile to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProfile&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.role, role) || other.role == role)&&(identical(other.status, status) || other.status == status)&&(identical(other.hasPassword, hasPassword) || other.hasPassword == hasPassword)&&(identical(other.defaultAddress, defaultAddress) || other.defaultAddress == defaultAddress)&&const DeepCollectionEquality().equals(other.providers, providers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,displayName,role,status,hasPassword,defaultAddress,const DeepCollectionEquality().hash(providers));

@override
String toString() {
  return 'UserProfile(id: $id, email: $email, displayName: $displayName, role: $role, status: $status, hasPassword: $hasPassword, defaultAddress: $defaultAddress, providers: $providers)';
}


}

/// @nodoc
abstract mixin class $UserProfileCopyWith<$Res>  {
  factory $UserProfileCopyWith(UserProfile value, $Res Function(UserProfile) _then) = _$UserProfileCopyWithImpl;
@useResult
$Res call({
 int id, String email, String? displayName, String role, UserStatus status, bool hasPassword, UserDefaultAddress? defaultAddress, List<UserProvider> providers
});


$UserDefaultAddressCopyWith<$Res>? get defaultAddress;

}
/// @nodoc
class _$UserProfileCopyWithImpl<$Res>
    implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._self, this._then);

  final UserProfile _self;
  final $Res Function(UserProfile) _then;

/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? email = null,Object? displayName = freezed,Object? role = null,Object? status = null,Object? hasPassword = null,Object? defaultAddress = freezed,Object? providers = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UserStatus,hasPassword: null == hasPassword ? _self.hasPassword : hasPassword // ignore: cast_nullable_to_non_nullable
as bool,defaultAddress: freezed == defaultAddress ? _self.defaultAddress : defaultAddress // ignore: cast_nullable_to_non_nullable
as UserDefaultAddress?,providers: null == providers ? _self.providers : providers // ignore: cast_nullable_to_non_nullable
as List<UserProvider>,
  ));
}
/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDefaultAddressCopyWith<$Res>? get defaultAddress {
    if (_self.defaultAddress == null) {
    return null;
  }

  return $UserDefaultAddressCopyWith<$Res>(_self.defaultAddress!, (value) {
    return _then(_self.copyWith(defaultAddress: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserProfile].
extension UserProfilePatterns on UserProfile {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserProfile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserProfile value)  $default,){
final _that = this;
switch (_that) {
case _UserProfile():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserProfile value)?  $default,){
final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String email,  String? displayName,  String role,  UserStatus status,  bool hasPassword,  UserDefaultAddress? defaultAddress,  List<UserProvider> providers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
return $default(_that.id,_that.email,_that.displayName,_that.role,_that.status,_that.hasPassword,_that.defaultAddress,_that.providers);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String email,  String? displayName,  String role,  UserStatus status,  bool hasPassword,  UserDefaultAddress? defaultAddress,  List<UserProvider> providers)  $default,) {final _that = this;
switch (_that) {
case _UserProfile():
return $default(_that.id,_that.email,_that.displayName,_that.role,_that.status,_that.hasPassword,_that.defaultAddress,_that.providers);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String email,  String? displayName,  String role,  UserStatus status,  bool hasPassword,  UserDefaultAddress? defaultAddress,  List<UserProvider> providers)?  $default,) {final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
return $default(_that.id,_that.email,_that.displayName,_that.role,_that.status,_that.hasPassword,_that.defaultAddress,_that.providers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserProfile implements UserProfile {
  const _UserProfile({required this.id, required this.email, required this.displayName, required this.role, required this.status, required this.hasPassword, required this.defaultAddress, required final  List<UserProvider> providers}): _providers = providers;
  factory _UserProfile.fromJson(Map<String, dynamic> json) => _$UserProfileFromJson(json);

@override final  int id;
@override final  String email;
@override final  String? displayName;
@override final  String role;
@override final  UserStatus status;
@override final  bool hasPassword;
@override final  UserDefaultAddress? defaultAddress;
 final  List<UserProvider> _providers;
@override List<UserProvider> get providers {
  if (_providers is EqualUnmodifiableListView) return _providers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_providers);
}


/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserProfileCopyWith<_UserProfile> get copyWith => __$UserProfileCopyWithImpl<_UserProfile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserProfileToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserProfile&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.role, role) || other.role == role)&&(identical(other.status, status) || other.status == status)&&(identical(other.hasPassword, hasPassword) || other.hasPassword == hasPassword)&&(identical(other.defaultAddress, defaultAddress) || other.defaultAddress == defaultAddress)&&const DeepCollectionEquality().equals(other._providers, _providers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,displayName,role,status,hasPassword,defaultAddress,const DeepCollectionEquality().hash(_providers));

@override
String toString() {
  return 'UserProfile(id: $id, email: $email, displayName: $displayName, role: $role, status: $status, hasPassword: $hasPassword, defaultAddress: $defaultAddress, providers: $providers)';
}


}

/// @nodoc
abstract mixin class _$UserProfileCopyWith<$Res> implements $UserProfileCopyWith<$Res> {
  factory _$UserProfileCopyWith(_UserProfile value, $Res Function(_UserProfile) _then) = __$UserProfileCopyWithImpl;
@override @useResult
$Res call({
 int id, String email, String? displayName, String role, UserStatus status, bool hasPassword, UserDefaultAddress? defaultAddress, List<UserProvider> providers
});


@override $UserDefaultAddressCopyWith<$Res>? get defaultAddress;

}
/// @nodoc
class __$UserProfileCopyWithImpl<$Res>
    implements _$UserProfileCopyWith<$Res> {
  __$UserProfileCopyWithImpl(this._self, this._then);

  final _UserProfile _self;
  final $Res Function(_UserProfile) _then;

/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? email = null,Object? displayName = freezed,Object? role = null,Object? status = null,Object? hasPassword = null,Object? defaultAddress = freezed,Object? providers = null,}) {
  return _then(_UserProfile(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UserStatus,hasPassword: null == hasPassword ? _self.hasPassword : hasPassword // ignore: cast_nullable_to_non_nullable
as bool,defaultAddress: freezed == defaultAddress ? _self.defaultAddress : defaultAddress // ignore: cast_nullable_to_non_nullable
as UserDefaultAddress?,providers: null == providers ? _self._providers : providers // ignore: cast_nullable_to_non_nullable
as List<UserProvider>,
  ));
}

/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDefaultAddressCopyWith<$Res>? get defaultAddress {
    if (_self.defaultAddress == null) {
    return null;
  }

  return $UserDefaultAddressCopyWith<$Res>(_self.defaultAddress!, (value) {
    return _then(_self.copyWith(defaultAddress: value));
  });
}
}


/// @nodoc
mixin _$UserDefaultAddress {

 int get id; String get label; String get recipientName; String get phone; String get addressLine; String get cityName; String get provinceName; String get districtName; String get postalCode;
/// Create a copy of UserDefaultAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserDefaultAddressCopyWith<UserDefaultAddress> get copyWith => _$UserDefaultAddressCopyWithImpl<UserDefaultAddress>(this as UserDefaultAddress, _$identity);

  /// Serializes this UserDefaultAddress to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserDefaultAddress&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.addressLine, addressLine) || other.addressLine == addressLine)&&(identical(other.cityName, cityName) || other.cityName == cityName)&&(identical(other.provinceName, provinceName) || other.provinceName == provinceName)&&(identical(other.districtName, districtName) || other.districtName == districtName)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label,recipientName,phone,addressLine,cityName,provinceName,districtName,postalCode);

@override
String toString() {
  return 'UserDefaultAddress(id: $id, label: $label, recipientName: $recipientName, phone: $phone, addressLine: $addressLine, cityName: $cityName, provinceName: $provinceName, districtName: $districtName, postalCode: $postalCode)';
}


}

/// @nodoc
abstract mixin class $UserDefaultAddressCopyWith<$Res>  {
  factory $UserDefaultAddressCopyWith(UserDefaultAddress value, $Res Function(UserDefaultAddress) _then) = _$UserDefaultAddressCopyWithImpl;
@useResult
$Res call({
 int id, String label, String recipientName, String phone, String addressLine, String cityName, String provinceName, String districtName, String postalCode
});




}
/// @nodoc
class _$UserDefaultAddressCopyWithImpl<$Res>
    implements $UserDefaultAddressCopyWith<$Res> {
  _$UserDefaultAddressCopyWithImpl(this._self, this._then);

  final UserDefaultAddress _self;
  final $Res Function(UserDefaultAddress) _then;

/// Create a copy of UserDefaultAddress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? label = null,Object? recipientName = null,Object? phone = null,Object? addressLine = null,Object? cityName = null,Object? provinceName = null,Object? districtName = null,Object? postalCode = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,recipientName: null == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,addressLine: null == addressLine ? _self.addressLine : addressLine // ignore: cast_nullable_to_non_nullable
as String,cityName: null == cityName ? _self.cityName : cityName // ignore: cast_nullable_to_non_nullable
as String,provinceName: null == provinceName ? _self.provinceName : provinceName // ignore: cast_nullable_to_non_nullable
as String,districtName: null == districtName ? _self.districtName : districtName // ignore: cast_nullable_to_non_nullable
as String,postalCode: null == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UserDefaultAddress].
extension UserDefaultAddressPatterns on UserDefaultAddress {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserDefaultAddress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserDefaultAddress() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserDefaultAddress value)  $default,){
final _that = this;
switch (_that) {
case _UserDefaultAddress():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserDefaultAddress value)?  $default,){
final _that = this;
switch (_that) {
case _UserDefaultAddress() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String label,  String recipientName,  String phone,  String addressLine,  String cityName,  String provinceName,  String districtName,  String postalCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserDefaultAddress() when $default != null:
return $default(_that.id,_that.label,_that.recipientName,_that.phone,_that.addressLine,_that.cityName,_that.provinceName,_that.districtName,_that.postalCode);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String label,  String recipientName,  String phone,  String addressLine,  String cityName,  String provinceName,  String districtName,  String postalCode)  $default,) {final _that = this;
switch (_that) {
case _UserDefaultAddress():
return $default(_that.id,_that.label,_that.recipientName,_that.phone,_that.addressLine,_that.cityName,_that.provinceName,_that.districtName,_that.postalCode);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String label,  String recipientName,  String phone,  String addressLine,  String cityName,  String provinceName,  String districtName,  String postalCode)?  $default,) {final _that = this;
switch (_that) {
case _UserDefaultAddress() when $default != null:
return $default(_that.id,_that.label,_that.recipientName,_that.phone,_that.addressLine,_that.cityName,_that.provinceName,_that.districtName,_that.postalCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserDefaultAddress implements UserDefaultAddress {
  const _UserDefaultAddress({required this.id, required this.label, required this.recipientName, required this.phone, required this.addressLine, required this.cityName, required this.provinceName, required this.districtName, required this.postalCode});
  factory _UserDefaultAddress.fromJson(Map<String, dynamic> json) => _$UserDefaultAddressFromJson(json);

@override final  int id;
@override final  String label;
@override final  String recipientName;
@override final  String phone;
@override final  String addressLine;
@override final  String cityName;
@override final  String provinceName;
@override final  String districtName;
@override final  String postalCode;

/// Create a copy of UserDefaultAddress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserDefaultAddressCopyWith<_UserDefaultAddress> get copyWith => __$UserDefaultAddressCopyWithImpl<_UserDefaultAddress>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserDefaultAddressToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserDefaultAddress&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.addressLine, addressLine) || other.addressLine == addressLine)&&(identical(other.cityName, cityName) || other.cityName == cityName)&&(identical(other.provinceName, provinceName) || other.provinceName == provinceName)&&(identical(other.districtName, districtName) || other.districtName == districtName)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label,recipientName,phone,addressLine,cityName,provinceName,districtName,postalCode);

@override
String toString() {
  return 'UserDefaultAddress(id: $id, label: $label, recipientName: $recipientName, phone: $phone, addressLine: $addressLine, cityName: $cityName, provinceName: $provinceName, districtName: $districtName, postalCode: $postalCode)';
}


}

/// @nodoc
abstract mixin class _$UserDefaultAddressCopyWith<$Res> implements $UserDefaultAddressCopyWith<$Res> {
  factory _$UserDefaultAddressCopyWith(_UserDefaultAddress value, $Res Function(_UserDefaultAddress) _then) = __$UserDefaultAddressCopyWithImpl;
@override @useResult
$Res call({
 int id, String label, String recipientName, String phone, String addressLine, String cityName, String provinceName, String districtName, String postalCode
});




}
/// @nodoc
class __$UserDefaultAddressCopyWithImpl<$Res>
    implements _$UserDefaultAddressCopyWith<$Res> {
  __$UserDefaultAddressCopyWithImpl(this._self, this._then);

  final _UserDefaultAddress _self;
  final $Res Function(_UserDefaultAddress) _then;

/// Create a copy of UserDefaultAddress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? label = null,Object? recipientName = null,Object? phone = null,Object? addressLine = null,Object? cityName = null,Object? provinceName = null,Object? districtName = null,Object? postalCode = null,}) {
  return _then(_UserDefaultAddress(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,recipientName: null == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,addressLine: null == addressLine ? _self.addressLine : addressLine // ignore: cast_nullable_to_non_nullable
as String,cityName: null == cityName ? _self.cityName : cityName // ignore: cast_nullable_to_non_nullable
as String,provinceName: null == provinceName ? _self.provinceName : provinceName // ignore: cast_nullable_to_non_nullable
as String,districtName: null == districtName ? _self.districtName : districtName // ignore: cast_nullable_to_non_nullable
as String,postalCode: null == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$UserProvider {

 UserProviderType get provider; String get providerEmail; String get providerDisplayName; String get providerAvatarUrl;
/// Create a copy of UserProvider
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserProviderCopyWith<UserProvider> get copyWith => _$UserProviderCopyWithImpl<UserProvider>(this as UserProvider, _$identity);

  /// Serializes this UserProvider to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProvider&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.providerEmail, providerEmail) || other.providerEmail == providerEmail)&&(identical(other.providerDisplayName, providerDisplayName) || other.providerDisplayName == providerDisplayName)&&(identical(other.providerAvatarUrl, providerAvatarUrl) || other.providerAvatarUrl == providerAvatarUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,provider,providerEmail,providerDisplayName,providerAvatarUrl);

@override
String toString() {
  return 'UserProvider(provider: $provider, providerEmail: $providerEmail, providerDisplayName: $providerDisplayName, providerAvatarUrl: $providerAvatarUrl)';
}


}

/// @nodoc
abstract mixin class $UserProviderCopyWith<$Res>  {
  factory $UserProviderCopyWith(UserProvider value, $Res Function(UserProvider) _then) = _$UserProviderCopyWithImpl;
@useResult
$Res call({
 UserProviderType provider, String providerEmail, String providerDisplayName, String providerAvatarUrl
});




}
/// @nodoc
class _$UserProviderCopyWithImpl<$Res>
    implements $UserProviderCopyWith<$Res> {
  _$UserProviderCopyWithImpl(this._self, this._then);

  final UserProvider _self;
  final $Res Function(UserProvider) _then;

/// Create a copy of UserProvider
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? provider = null,Object? providerEmail = null,Object? providerDisplayName = null,Object? providerAvatarUrl = null,}) {
  return _then(_self.copyWith(
provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as UserProviderType,providerEmail: null == providerEmail ? _self.providerEmail : providerEmail // ignore: cast_nullable_to_non_nullable
as String,providerDisplayName: null == providerDisplayName ? _self.providerDisplayName : providerDisplayName // ignore: cast_nullable_to_non_nullable
as String,providerAvatarUrl: null == providerAvatarUrl ? _self.providerAvatarUrl : providerAvatarUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UserProvider].
extension UserProviderPatterns on UserProvider {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserProvider value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserProvider() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserProvider value)  $default,){
final _that = this;
switch (_that) {
case _UserProvider():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserProvider value)?  $default,){
final _that = this;
switch (_that) {
case _UserProvider() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserProviderType provider,  String providerEmail,  String providerDisplayName,  String providerAvatarUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserProvider() when $default != null:
return $default(_that.provider,_that.providerEmail,_that.providerDisplayName,_that.providerAvatarUrl);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserProviderType provider,  String providerEmail,  String providerDisplayName,  String providerAvatarUrl)  $default,) {final _that = this;
switch (_that) {
case _UserProvider():
return $default(_that.provider,_that.providerEmail,_that.providerDisplayName,_that.providerAvatarUrl);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserProviderType provider,  String providerEmail,  String providerDisplayName,  String providerAvatarUrl)?  $default,) {final _that = this;
switch (_that) {
case _UserProvider() when $default != null:
return $default(_that.provider,_that.providerEmail,_that.providerDisplayName,_that.providerAvatarUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserProvider implements UserProvider {
  const _UserProvider({required this.provider, required this.providerEmail, required this.providerDisplayName, required this.providerAvatarUrl});
  factory _UserProvider.fromJson(Map<String, dynamic> json) => _$UserProviderFromJson(json);

@override final  UserProviderType provider;
@override final  String providerEmail;
@override final  String providerDisplayName;
@override final  String providerAvatarUrl;

/// Create a copy of UserProvider
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserProviderCopyWith<_UserProvider> get copyWith => __$UserProviderCopyWithImpl<_UserProvider>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserProviderToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserProvider&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.providerEmail, providerEmail) || other.providerEmail == providerEmail)&&(identical(other.providerDisplayName, providerDisplayName) || other.providerDisplayName == providerDisplayName)&&(identical(other.providerAvatarUrl, providerAvatarUrl) || other.providerAvatarUrl == providerAvatarUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,provider,providerEmail,providerDisplayName,providerAvatarUrl);

@override
String toString() {
  return 'UserProvider(provider: $provider, providerEmail: $providerEmail, providerDisplayName: $providerDisplayName, providerAvatarUrl: $providerAvatarUrl)';
}


}

/// @nodoc
abstract mixin class _$UserProviderCopyWith<$Res> implements $UserProviderCopyWith<$Res> {
  factory _$UserProviderCopyWith(_UserProvider value, $Res Function(_UserProvider) _then) = __$UserProviderCopyWithImpl;
@override @useResult
$Res call({
 UserProviderType provider, String providerEmail, String providerDisplayName, String providerAvatarUrl
});




}
/// @nodoc
class __$UserProviderCopyWithImpl<$Res>
    implements _$UserProviderCopyWith<$Res> {
  __$UserProviderCopyWithImpl(this._self, this._then);

  final _UserProvider _self;
  final $Res Function(_UserProvider) _then;

/// Create a copy of UserProvider
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? provider = null,Object? providerEmail = null,Object? providerDisplayName = null,Object? providerAvatarUrl = null,}) {
  return _then(_UserProvider(
provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as UserProviderType,providerEmail: null == providerEmail ? _self.providerEmail : providerEmail // ignore: cast_nullable_to_non_nullable
as String,providerDisplayName: null == providerDisplayName ? _self.providerDisplayName : providerDisplayName // ignore: cast_nullable_to_non_nullable
as String,providerAvatarUrl: null == providerAvatarUrl ? _self.providerAvatarUrl : providerAvatarUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
