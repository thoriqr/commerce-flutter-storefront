// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_checkout_address_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SetCheckoutAddressRequest {

 int get addressId;
/// Create a copy of SetCheckoutAddressRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetCheckoutAddressRequestCopyWith<SetCheckoutAddressRequest> get copyWith => _$SetCheckoutAddressRequestCopyWithImpl<SetCheckoutAddressRequest>(this as SetCheckoutAddressRequest, _$identity);

  /// Serializes this SetCheckoutAddressRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetCheckoutAddressRequest&&(identical(other.addressId, addressId) || other.addressId == addressId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,addressId);

@override
String toString() {
  return 'SetCheckoutAddressRequest(addressId: $addressId)';
}


}

/// @nodoc
abstract mixin class $SetCheckoutAddressRequestCopyWith<$Res>  {
  factory $SetCheckoutAddressRequestCopyWith(SetCheckoutAddressRequest value, $Res Function(SetCheckoutAddressRequest) _then) = _$SetCheckoutAddressRequestCopyWithImpl;
@useResult
$Res call({
 int addressId
});




}
/// @nodoc
class _$SetCheckoutAddressRequestCopyWithImpl<$Res>
    implements $SetCheckoutAddressRequestCopyWith<$Res> {
  _$SetCheckoutAddressRequestCopyWithImpl(this._self, this._then);

  final SetCheckoutAddressRequest _self;
  final $Res Function(SetCheckoutAddressRequest) _then;

/// Create a copy of SetCheckoutAddressRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? addressId = null,}) {
  return _then(_self.copyWith(
addressId: null == addressId ? _self.addressId : addressId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SetCheckoutAddressRequest].
extension SetCheckoutAddressRequestPatterns on SetCheckoutAddressRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SetCheckoutAddressRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SetCheckoutAddressRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SetCheckoutAddressRequest value)  $default,){
final _that = this;
switch (_that) {
case _SetCheckoutAddressRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SetCheckoutAddressRequest value)?  $default,){
final _that = this;
switch (_that) {
case _SetCheckoutAddressRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int addressId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SetCheckoutAddressRequest() when $default != null:
return $default(_that.addressId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int addressId)  $default,) {final _that = this;
switch (_that) {
case _SetCheckoutAddressRequest():
return $default(_that.addressId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int addressId)?  $default,) {final _that = this;
switch (_that) {
case _SetCheckoutAddressRequest() when $default != null:
return $default(_that.addressId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SetCheckoutAddressRequest implements SetCheckoutAddressRequest {
  const _SetCheckoutAddressRequest({required this.addressId});
  factory _SetCheckoutAddressRequest.fromJson(Map<String, dynamic> json) => _$SetCheckoutAddressRequestFromJson(json);

@override final  int addressId;

/// Create a copy of SetCheckoutAddressRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetCheckoutAddressRequestCopyWith<_SetCheckoutAddressRequest> get copyWith => __$SetCheckoutAddressRequestCopyWithImpl<_SetCheckoutAddressRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SetCheckoutAddressRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetCheckoutAddressRequest&&(identical(other.addressId, addressId) || other.addressId == addressId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,addressId);

@override
String toString() {
  return 'SetCheckoutAddressRequest(addressId: $addressId)';
}


}

/// @nodoc
abstract mixin class _$SetCheckoutAddressRequestCopyWith<$Res> implements $SetCheckoutAddressRequestCopyWith<$Res> {
  factory _$SetCheckoutAddressRequestCopyWith(_SetCheckoutAddressRequest value, $Res Function(_SetCheckoutAddressRequest) _then) = __$SetCheckoutAddressRequestCopyWithImpl;
@override @useResult
$Res call({
 int addressId
});




}
/// @nodoc
class __$SetCheckoutAddressRequestCopyWithImpl<$Res>
    implements _$SetCheckoutAddressRequestCopyWith<$Res> {
  __$SetCheckoutAddressRequestCopyWithImpl(this._self, this._then);

  final _SetCheckoutAddressRequest _self;
  final $Res Function(_SetCheckoutAddressRequest) _then;

/// Create a copy of SetCheckoutAddressRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? addressId = null,}) {
  return _then(_SetCheckoutAddressRequest(
addressId: null == addressId ? _self.addressId : addressId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
