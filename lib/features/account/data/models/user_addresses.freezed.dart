// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_addresses.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserAddresses {

 List<UserAddress> get addresses; int get limit;
/// Create a copy of UserAddresses
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserAddressesCopyWith<UserAddresses> get copyWith => _$UserAddressesCopyWithImpl<UserAddresses>(this as UserAddresses, _$identity);

  /// Serializes this UserAddresses to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserAddresses&&const DeepCollectionEquality().equals(other.addresses, addresses)&&(identical(other.limit, limit) || other.limit == limit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(addresses),limit);

@override
String toString() {
  return 'UserAddresses(addresses: $addresses, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $UserAddressesCopyWith<$Res>  {
  factory $UserAddressesCopyWith(UserAddresses value, $Res Function(UserAddresses) _then) = _$UserAddressesCopyWithImpl;
@useResult
$Res call({
 List<UserAddress> addresses, int limit
});




}
/// @nodoc
class _$UserAddressesCopyWithImpl<$Res>
    implements $UserAddressesCopyWith<$Res> {
  _$UserAddressesCopyWithImpl(this._self, this._then);

  final UserAddresses _self;
  final $Res Function(UserAddresses) _then;

/// Create a copy of UserAddresses
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? addresses = null,Object? limit = null,}) {
  return _then(_self.copyWith(
addresses: null == addresses ? _self.addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<UserAddress>,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [UserAddresses].
extension UserAddressesPatterns on UserAddresses {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserAddresses value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserAddresses() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserAddresses value)  $default,){
final _that = this;
switch (_that) {
case _UserAddresses():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserAddresses value)?  $default,){
final _that = this;
switch (_that) {
case _UserAddresses() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<UserAddress> addresses,  int limit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserAddresses() when $default != null:
return $default(_that.addresses,_that.limit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<UserAddress> addresses,  int limit)  $default,) {final _that = this;
switch (_that) {
case _UserAddresses():
return $default(_that.addresses,_that.limit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<UserAddress> addresses,  int limit)?  $default,) {final _that = this;
switch (_that) {
case _UserAddresses() when $default != null:
return $default(_that.addresses,_that.limit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserAddresses implements UserAddresses {
  const _UserAddresses({required final  List<UserAddress> addresses, required this.limit}): _addresses = addresses;
  factory _UserAddresses.fromJson(Map<String, dynamic> json) => _$UserAddressesFromJson(json);

 final  List<UserAddress> _addresses;
@override List<UserAddress> get addresses {
  if (_addresses is EqualUnmodifiableListView) return _addresses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_addresses);
}

@override final  int limit;

/// Create a copy of UserAddresses
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserAddressesCopyWith<_UserAddresses> get copyWith => __$UserAddressesCopyWithImpl<_UserAddresses>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserAddressesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserAddresses&&const DeepCollectionEquality().equals(other._addresses, _addresses)&&(identical(other.limit, limit) || other.limit == limit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_addresses),limit);

@override
String toString() {
  return 'UserAddresses(addresses: $addresses, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$UserAddressesCopyWith<$Res> implements $UserAddressesCopyWith<$Res> {
  factory _$UserAddressesCopyWith(_UserAddresses value, $Res Function(_UserAddresses) _then) = __$UserAddressesCopyWithImpl;
@override @useResult
$Res call({
 List<UserAddress> addresses, int limit
});




}
/// @nodoc
class __$UserAddressesCopyWithImpl<$Res>
    implements _$UserAddressesCopyWith<$Res> {
  __$UserAddressesCopyWithImpl(this._self, this._then);

  final _UserAddresses _self;
  final $Res Function(_UserAddresses) _then;

/// Create a copy of UserAddresses
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? addresses = null,Object? limit = null,}) {
  return _then(_UserAddresses(
addresses: null == addresses ? _self._addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<UserAddress>,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$UserAddress {

 int get id; String get label; String get recipientName; String get phone; String get addressLine; String get cityName; String get provinceName; String get districtName; String get postalCode; bool get isDefault;
/// Create a copy of UserAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserAddressCopyWith<UserAddress> get copyWith => _$UserAddressCopyWithImpl<UserAddress>(this as UserAddress, _$identity);

  /// Serializes this UserAddress to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserAddress&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.addressLine, addressLine) || other.addressLine == addressLine)&&(identical(other.cityName, cityName) || other.cityName == cityName)&&(identical(other.provinceName, provinceName) || other.provinceName == provinceName)&&(identical(other.districtName, districtName) || other.districtName == districtName)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label,recipientName,phone,addressLine,cityName,provinceName,districtName,postalCode,isDefault);

@override
String toString() {
  return 'UserAddress(id: $id, label: $label, recipientName: $recipientName, phone: $phone, addressLine: $addressLine, cityName: $cityName, provinceName: $provinceName, districtName: $districtName, postalCode: $postalCode, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class $UserAddressCopyWith<$Res>  {
  factory $UserAddressCopyWith(UserAddress value, $Res Function(UserAddress) _then) = _$UserAddressCopyWithImpl;
@useResult
$Res call({
 int id, String label, String recipientName, String phone, String addressLine, String cityName, String provinceName, String districtName, String postalCode, bool isDefault
});




}
/// @nodoc
class _$UserAddressCopyWithImpl<$Res>
    implements $UserAddressCopyWith<$Res> {
  _$UserAddressCopyWithImpl(this._self, this._then);

  final UserAddress _self;
  final $Res Function(UserAddress) _then;

/// Create a copy of UserAddress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? label = null,Object? recipientName = null,Object? phone = null,Object? addressLine = null,Object? cityName = null,Object? provinceName = null,Object? districtName = null,Object? postalCode = null,Object? isDefault = null,}) {
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
as String,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [UserAddress].
extension UserAddressPatterns on UserAddress {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserAddress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserAddress() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserAddress value)  $default,){
final _that = this;
switch (_that) {
case _UserAddress():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserAddress value)?  $default,){
final _that = this;
switch (_that) {
case _UserAddress() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String label,  String recipientName,  String phone,  String addressLine,  String cityName,  String provinceName,  String districtName,  String postalCode,  bool isDefault)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserAddress() when $default != null:
return $default(_that.id,_that.label,_that.recipientName,_that.phone,_that.addressLine,_that.cityName,_that.provinceName,_that.districtName,_that.postalCode,_that.isDefault);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String label,  String recipientName,  String phone,  String addressLine,  String cityName,  String provinceName,  String districtName,  String postalCode,  bool isDefault)  $default,) {final _that = this;
switch (_that) {
case _UserAddress():
return $default(_that.id,_that.label,_that.recipientName,_that.phone,_that.addressLine,_that.cityName,_that.provinceName,_that.districtName,_that.postalCode,_that.isDefault);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String label,  String recipientName,  String phone,  String addressLine,  String cityName,  String provinceName,  String districtName,  String postalCode,  bool isDefault)?  $default,) {final _that = this;
switch (_that) {
case _UserAddress() when $default != null:
return $default(_that.id,_that.label,_that.recipientName,_that.phone,_that.addressLine,_that.cityName,_that.provinceName,_that.districtName,_that.postalCode,_that.isDefault);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserAddress implements UserAddress {
  const _UserAddress({required this.id, required this.label, required this.recipientName, required this.phone, required this.addressLine, required this.cityName, required this.provinceName, required this.districtName, required this.postalCode, required this.isDefault});
  factory _UserAddress.fromJson(Map<String, dynamic> json) => _$UserAddressFromJson(json);

@override final  int id;
@override final  String label;
@override final  String recipientName;
@override final  String phone;
@override final  String addressLine;
@override final  String cityName;
@override final  String provinceName;
@override final  String districtName;
@override final  String postalCode;
@override final  bool isDefault;

/// Create a copy of UserAddress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserAddressCopyWith<_UserAddress> get copyWith => __$UserAddressCopyWithImpl<_UserAddress>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserAddressToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserAddress&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.addressLine, addressLine) || other.addressLine == addressLine)&&(identical(other.cityName, cityName) || other.cityName == cityName)&&(identical(other.provinceName, provinceName) || other.provinceName == provinceName)&&(identical(other.districtName, districtName) || other.districtName == districtName)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label,recipientName,phone,addressLine,cityName,provinceName,districtName,postalCode,isDefault);

@override
String toString() {
  return 'UserAddress(id: $id, label: $label, recipientName: $recipientName, phone: $phone, addressLine: $addressLine, cityName: $cityName, provinceName: $provinceName, districtName: $districtName, postalCode: $postalCode, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class _$UserAddressCopyWith<$Res> implements $UserAddressCopyWith<$Res> {
  factory _$UserAddressCopyWith(_UserAddress value, $Res Function(_UserAddress) _then) = __$UserAddressCopyWithImpl;
@override @useResult
$Res call({
 int id, String label, String recipientName, String phone, String addressLine, String cityName, String provinceName, String districtName, String postalCode, bool isDefault
});




}
/// @nodoc
class __$UserAddressCopyWithImpl<$Res>
    implements _$UserAddressCopyWith<$Res> {
  __$UserAddressCopyWithImpl(this._self, this._then);

  final _UserAddress _self;
  final $Res Function(_UserAddress) _then;

/// Create a copy of UserAddress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? label = null,Object? recipientName = null,Object? phone = null,Object? addressLine = null,Object? cityName = null,Object? provinceName = null,Object? districtName = null,Object? postalCode = null,Object? isDefault = null,}) {
  return _then(_UserAddress(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,recipientName: null == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,addressLine: null == addressLine ? _self.addressLine : addressLine // ignore: cast_nullable_to_non_nullable
as String,cityName: null == cityName ? _self.cityName : cityName // ignore: cast_nullable_to_non_nullable
as String,provinceName: null == provinceName ? _self.provinceName : provinceName // ignore: cast_nullable_to_non_nullable
as String,districtName: null == districtName ? _self.districtName : districtName // ignore: cast_nullable_to_non_nullable
as String,postalCode: null == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
