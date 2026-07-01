// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_address_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserAddressDetail {

 String get label; String get recipientName; String get shippingProvinceId; String get shippingCityId; String get shippingDistrictId; String get addressLine; bool get isDefault; String get postalCode;
/// Create a copy of UserAddressDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserAddressDetailCopyWith<UserAddressDetail> get copyWith => _$UserAddressDetailCopyWithImpl<UserAddressDetail>(this as UserAddressDetail, _$identity);

  /// Serializes this UserAddressDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserAddressDetail&&(identical(other.label, label) || other.label == label)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.shippingProvinceId, shippingProvinceId) || other.shippingProvinceId == shippingProvinceId)&&(identical(other.shippingCityId, shippingCityId) || other.shippingCityId == shippingCityId)&&(identical(other.shippingDistrictId, shippingDistrictId) || other.shippingDistrictId == shippingDistrictId)&&(identical(other.addressLine, addressLine) || other.addressLine == addressLine)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,recipientName,shippingProvinceId,shippingCityId,shippingDistrictId,addressLine,isDefault,postalCode);

@override
String toString() {
  return 'UserAddressDetail(label: $label, recipientName: $recipientName, shippingProvinceId: $shippingProvinceId, shippingCityId: $shippingCityId, shippingDistrictId: $shippingDistrictId, addressLine: $addressLine, isDefault: $isDefault, postalCode: $postalCode)';
}


}

/// @nodoc
abstract mixin class $UserAddressDetailCopyWith<$Res>  {
  factory $UserAddressDetailCopyWith(UserAddressDetail value, $Res Function(UserAddressDetail) _then) = _$UserAddressDetailCopyWithImpl;
@useResult
$Res call({
 String label, String recipientName, String shippingProvinceId, String shippingCityId, String shippingDistrictId, String addressLine, bool isDefault, String postalCode
});




}
/// @nodoc
class _$UserAddressDetailCopyWithImpl<$Res>
    implements $UserAddressDetailCopyWith<$Res> {
  _$UserAddressDetailCopyWithImpl(this._self, this._then);

  final UserAddressDetail _self;
  final $Res Function(UserAddressDetail) _then;

/// Create a copy of UserAddressDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = null,Object? recipientName = null,Object? shippingProvinceId = null,Object? shippingCityId = null,Object? shippingDistrictId = null,Object? addressLine = null,Object? isDefault = null,Object? postalCode = null,}) {
  return _then(_self.copyWith(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,recipientName: null == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String,shippingProvinceId: null == shippingProvinceId ? _self.shippingProvinceId : shippingProvinceId // ignore: cast_nullable_to_non_nullable
as String,shippingCityId: null == shippingCityId ? _self.shippingCityId : shippingCityId // ignore: cast_nullable_to_non_nullable
as String,shippingDistrictId: null == shippingDistrictId ? _self.shippingDistrictId : shippingDistrictId // ignore: cast_nullable_to_non_nullable
as String,addressLine: null == addressLine ? _self.addressLine : addressLine // ignore: cast_nullable_to_non_nullable
as String,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,postalCode: null == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UserAddressDetail].
extension UserAddressDetailPatterns on UserAddressDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserAddressDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserAddressDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserAddressDetail value)  $default,){
final _that = this;
switch (_that) {
case _UserAddressDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserAddressDetail value)?  $default,){
final _that = this;
switch (_that) {
case _UserAddressDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String label,  String recipientName,  String shippingProvinceId,  String shippingCityId,  String shippingDistrictId,  String addressLine,  bool isDefault,  String postalCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserAddressDetail() when $default != null:
return $default(_that.label,_that.recipientName,_that.shippingProvinceId,_that.shippingCityId,_that.shippingDistrictId,_that.addressLine,_that.isDefault,_that.postalCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String label,  String recipientName,  String shippingProvinceId,  String shippingCityId,  String shippingDistrictId,  String addressLine,  bool isDefault,  String postalCode)  $default,) {final _that = this;
switch (_that) {
case _UserAddressDetail():
return $default(_that.label,_that.recipientName,_that.shippingProvinceId,_that.shippingCityId,_that.shippingDistrictId,_that.addressLine,_that.isDefault,_that.postalCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String label,  String recipientName,  String shippingProvinceId,  String shippingCityId,  String shippingDistrictId,  String addressLine,  bool isDefault,  String postalCode)?  $default,) {final _that = this;
switch (_that) {
case _UserAddressDetail() when $default != null:
return $default(_that.label,_that.recipientName,_that.shippingProvinceId,_that.shippingCityId,_that.shippingDistrictId,_that.addressLine,_that.isDefault,_that.postalCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserAddressDetail implements UserAddressDetail {
  const _UserAddressDetail({required this.label, required this.recipientName, required this.shippingProvinceId, required this.shippingCityId, required this.shippingDistrictId, required this.addressLine, required this.isDefault, required this.postalCode});
  factory _UserAddressDetail.fromJson(Map<String, dynamic> json) => _$UserAddressDetailFromJson(json);

@override final  String label;
@override final  String recipientName;
@override final  String shippingProvinceId;
@override final  String shippingCityId;
@override final  String shippingDistrictId;
@override final  String addressLine;
@override final  bool isDefault;
@override final  String postalCode;

/// Create a copy of UserAddressDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserAddressDetailCopyWith<_UserAddressDetail> get copyWith => __$UserAddressDetailCopyWithImpl<_UserAddressDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserAddressDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserAddressDetail&&(identical(other.label, label) || other.label == label)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.shippingProvinceId, shippingProvinceId) || other.shippingProvinceId == shippingProvinceId)&&(identical(other.shippingCityId, shippingCityId) || other.shippingCityId == shippingCityId)&&(identical(other.shippingDistrictId, shippingDistrictId) || other.shippingDistrictId == shippingDistrictId)&&(identical(other.addressLine, addressLine) || other.addressLine == addressLine)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,recipientName,shippingProvinceId,shippingCityId,shippingDistrictId,addressLine,isDefault,postalCode);

@override
String toString() {
  return 'UserAddressDetail(label: $label, recipientName: $recipientName, shippingProvinceId: $shippingProvinceId, shippingCityId: $shippingCityId, shippingDistrictId: $shippingDistrictId, addressLine: $addressLine, isDefault: $isDefault, postalCode: $postalCode)';
}


}

/// @nodoc
abstract mixin class _$UserAddressDetailCopyWith<$Res> implements $UserAddressDetailCopyWith<$Res> {
  factory _$UserAddressDetailCopyWith(_UserAddressDetail value, $Res Function(_UserAddressDetail) _then) = __$UserAddressDetailCopyWithImpl;
@override @useResult
$Res call({
 String label, String recipientName, String shippingProvinceId, String shippingCityId, String shippingDistrictId, String addressLine, bool isDefault, String postalCode
});




}
/// @nodoc
class __$UserAddressDetailCopyWithImpl<$Res>
    implements _$UserAddressDetailCopyWith<$Res> {
  __$UserAddressDetailCopyWithImpl(this._self, this._then);

  final _UserAddressDetail _self;
  final $Res Function(_UserAddressDetail) _then;

/// Create a copy of UserAddressDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = null,Object? recipientName = null,Object? shippingProvinceId = null,Object? shippingCityId = null,Object? shippingDistrictId = null,Object? addressLine = null,Object? isDefault = null,Object? postalCode = null,}) {
  return _then(_UserAddressDetail(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,recipientName: null == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String,shippingProvinceId: null == shippingProvinceId ? _self.shippingProvinceId : shippingProvinceId // ignore: cast_nullable_to_non_nullable
as String,shippingCityId: null == shippingCityId ? _self.shippingCityId : shippingCityId // ignore: cast_nullable_to_non_nullable
as String,shippingDistrictId: null == shippingDistrictId ? _self.shippingDistrictId : shippingDistrictId // ignore: cast_nullable_to_non_nullable
as String,addressLine: null == addressLine ? _self.addressLine : addressLine // ignore: cast_nullable_to_non_nullable
as String,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,postalCode: null == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
