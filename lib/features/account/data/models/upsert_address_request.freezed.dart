// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upsert_address_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpsertAddressRequest {

 String get label; String get recipientName; String get shippingProvinceId; String get shippingCityId; String get shippingDistrictId; String get addressLine; String get phone; String get postalCode;
/// Create a copy of UpsertAddressRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpsertAddressRequestCopyWith<UpsertAddressRequest> get copyWith => _$UpsertAddressRequestCopyWithImpl<UpsertAddressRequest>(this as UpsertAddressRequest, _$identity);

  /// Serializes this UpsertAddressRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpsertAddressRequest&&(identical(other.label, label) || other.label == label)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.shippingProvinceId, shippingProvinceId) || other.shippingProvinceId == shippingProvinceId)&&(identical(other.shippingCityId, shippingCityId) || other.shippingCityId == shippingCityId)&&(identical(other.shippingDistrictId, shippingDistrictId) || other.shippingDistrictId == shippingDistrictId)&&(identical(other.addressLine, addressLine) || other.addressLine == addressLine)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,recipientName,shippingProvinceId,shippingCityId,shippingDistrictId,addressLine,phone,postalCode);

@override
String toString() {
  return 'UpsertAddressRequest(label: $label, recipientName: $recipientName, shippingProvinceId: $shippingProvinceId, shippingCityId: $shippingCityId, shippingDistrictId: $shippingDistrictId, addressLine: $addressLine, phone: $phone, postalCode: $postalCode)';
}


}

/// @nodoc
abstract mixin class $UpsertAddressRequestCopyWith<$Res>  {
  factory $UpsertAddressRequestCopyWith(UpsertAddressRequest value, $Res Function(UpsertAddressRequest) _then) = _$UpsertAddressRequestCopyWithImpl;
@useResult
$Res call({
 String label, String recipientName, String shippingProvinceId, String shippingCityId, String shippingDistrictId, String addressLine, String phone, String postalCode
});




}
/// @nodoc
class _$UpsertAddressRequestCopyWithImpl<$Res>
    implements $UpsertAddressRequestCopyWith<$Res> {
  _$UpsertAddressRequestCopyWithImpl(this._self, this._then);

  final UpsertAddressRequest _self;
  final $Res Function(UpsertAddressRequest) _then;

/// Create a copy of UpsertAddressRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = null,Object? recipientName = null,Object? shippingProvinceId = null,Object? shippingCityId = null,Object? shippingDistrictId = null,Object? addressLine = null,Object? phone = null,Object? postalCode = null,}) {
  return _then(_self.copyWith(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,recipientName: null == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String,shippingProvinceId: null == shippingProvinceId ? _self.shippingProvinceId : shippingProvinceId // ignore: cast_nullable_to_non_nullable
as String,shippingCityId: null == shippingCityId ? _self.shippingCityId : shippingCityId // ignore: cast_nullable_to_non_nullable
as String,shippingDistrictId: null == shippingDistrictId ? _self.shippingDistrictId : shippingDistrictId // ignore: cast_nullable_to_non_nullable
as String,addressLine: null == addressLine ? _self.addressLine : addressLine // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,postalCode: null == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UpsertAddressRequest].
extension UpsertAddressRequestPatterns on UpsertAddressRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpsertAddressRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpsertAddressRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpsertAddressRequest value)  $default,){
final _that = this;
switch (_that) {
case _UpsertAddressRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpsertAddressRequest value)?  $default,){
final _that = this;
switch (_that) {
case _UpsertAddressRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String label,  String recipientName,  String shippingProvinceId,  String shippingCityId,  String shippingDistrictId,  String addressLine,  String phone,  String postalCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpsertAddressRequest() when $default != null:
return $default(_that.label,_that.recipientName,_that.shippingProvinceId,_that.shippingCityId,_that.shippingDistrictId,_that.addressLine,_that.phone,_that.postalCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String label,  String recipientName,  String shippingProvinceId,  String shippingCityId,  String shippingDistrictId,  String addressLine,  String phone,  String postalCode)  $default,) {final _that = this;
switch (_that) {
case _UpsertAddressRequest():
return $default(_that.label,_that.recipientName,_that.shippingProvinceId,_that.shippingCityId,_that.shippingDistrictId,_that.addressLine,_that.phone,_that.postalCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String label,  String recipientName,  String shippingProvinceId,  String shippingCityId,  String shippingDistrictId,  String addressLine,  String phone,  String postalCode)?  $default,) {final _that = this;
switch (_that) {
case _UpsertAddressRequest() when $default != null:
return $default(_that.label,_that.recipientName,_that.shippingProvinceId,_that.shippingCityId,_that.shippingDistrictId,_that.addressLine,_that.phone,_that.postalCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpsertAddressRequest implements UpsertAddressRequest {
  const _UpsertAddressRequest({required this.label, required this.recipientName, required this.shippingProvinceId, required this.shippingCityId, required this.shippingDistrictId, required this.addressLine, required this.phone, required this.postalCode});
  factory _UpsertAddressRequest.fromJson(Map<String, dynamic> json) => _$UpsertAddressRequestFromJson(json);

@override final  String label;
@override final  String recipientName;
@override final  String shippingProvinceId;
@override final  String shippingCityId;
@override final  String shippingDistrictId;
@override final  String addressLine;
@override final  String phone;
@override final  String postalCode;

/// Create a copy of UpsertAddressRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpsertAddressRequestCopyWith<_UpsertAddressRequest> get copyWith => __$UpsertAddressRequestCopyWithImpl<_UpsertAddressRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpsertAddressRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpsertAddressRequest&&(identical(other.label, label) || other.label == label)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.shippingProvinceId, shippingProvinceId) || other.shippingProvinceId == shippingProvinceId)&&(identical(other.shippingCityId, shippingCityId) || other.shippingCityId == shippingCityId)&&(identical(other.shippingDistrictId, shippingDistrictId) || other.shippingDistrictId == shippingDistrictId)&&(identical(other.addressLine, addressLine) || other.addressLine == addressLine)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,recipientName,shippingProvinceId,shippingCityId,shippingDistrictId,addressLine,phone,postalCode);

@override
String toString() {
  return 'UpsertAddressRequest(label: $label, recipientName: $recipientName, shippingProvinceId: $shippingProvinceId, shippingCityId: $shippingCityId, shippingDistrictId: $shippingDistrictId, addressLine: $addressLine, phone: $phone, postalCode: $postalCode)';
}


}

/// @nodoc
abstract mixin class _$UpsertAddressRequestCopyWith<$Res> implements $UpsertAddressRequestCopyWith<$Res> {
  factory _$UpsertAddressRequestCopyWith(_UpsertAddressRequest value, $Res Function(_UpsertAddressRequest) _then) = __$UpsertAddressRequestCopyWithImpl;
@override @useResult
$Res call({
 String label, String recipientName, String shippingProvinceId, String shippingCityId, String shippingDistrictId, String addressLine, String phone, String postalCode
});




}
/// @nodoc
class __$UpsertAddressRequestCopyWithImpl<$Res>
    implements _$UpsertAddressRequestCopyWith<$Res> {
  __$UpsertAddressRequestCopyWithImpl(this._self, this._then);

  final _UpsertAddressRequest _self;
  final $Res Function(_UpsertAddressRequest) _then;

/// Create a copy of UpsertAddressRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = null,Object? recipientName = null,Object? shippingProvinceId = null,Object? shippingCityId = null,Object? shippingDistrictId = null,Object? addressLine = null,Object? phone = null,Object? postalCode = null,}) {
  return _then(_UpsertAddressRequest(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,recipientName: null == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String,shippingProvinceId: null == shippingProvinceId ? _self.shippingProvinceId : shippingProvinceId // ignore: cast_nullable_to_non_nullable
as String,shippingCityId: null == shippingCityId ? _self.shippingCityId : shippingCityId // ignore: cast_nullable_to_non_nullable
as String,shippingDistrictId: null == shippingDistrictId ? _self.shippingDistrictId : shippingDistrictId // ignore: cast_nullable_to_non_nullable
as String,addressLine: null == addressLine ? _self.addressLine : addressLine // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,postalCode: null == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
