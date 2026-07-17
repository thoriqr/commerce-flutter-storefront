// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_address_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateAddressResponse {

 int get addressId;
/// Create a copy of CreateAddressResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateAddressResponseCopyWith<CreateAddressResponse> get copyWith => _$CreateAddressResponseCopyWithImpl<CreateAddressResponse>(this as CreateAddressResponse, _$identity);

  /// Serializes this CreateAddressResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateAddressResponse&&(identical(other.addressId, addressId) || other.addressId == addressId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,addressId);

@override
String toString() {
  return 'CreateAddressResponse(addressId: $addressId)';
}


}

/// @nodoc
abstract mixin class $CreateAddressResponseCopyWith<$Res>  {
  factory $CreateAddressResponseCopyWith(CreateAddressResponse value, $Res Function(CreateAddressResponse) _then) = _$CreateAddressResponseCopyWithImpl;
@useResult
$Res call({
 int addressId
});




}
/// @nodoc
class _$CreateAddressResponseCopyWithImpl<$Res>
    implements $CreateAddressResponseCopyWith<$Res> {
  _$CreateAddressResponseCopyWithImpl(this._self, this._then);

  final CreateAddressResponse _self;
  final $Res Function(CreateAddressResponse) _then;

/// Create a copy of CreateAddressResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? addressId = null,}) {
  return _then(_self.copyWith(
addressId: null == addressId ? _self.addressId : addressId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateAddressResponse].
extension CreateAddressResponsePatterns on CreateAddressResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateAddressResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateAddressResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateAddressResponse value)  $default,){
final _that = this;
switch (_that) {
case _CreateAddressResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateAddressResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CreateAddressResponse() when $default != null:
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
case _CreateAddressResponse() when $default != null:
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
case _CreateAddressResponse():
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
case _CreateAddressResponse() when $default != null:
return $default(_that.addressId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateAddressResponse implements CreateAddressResponse {
  const _CreateAddressResponse({required this.addressId});
  factory _CreateAddressResponse.fromJson(Map<String, dynamic> json) => _$CreateAddressResponseFromJson(json);

@override final  int addressId;

/// Create a copy of CreateAddressResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateAddressResponseCopyWith<_CreateAddressResponse> get copyWith => __$CreateAddressResponseCopyWithImpl<_CreateAddressResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateAddressResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateAddressResponse&&(identical(other.addressId, addressId) || other.addressId == addressId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,addressId);

@override
String toString() {
  return 'CreateAddressResponse(addressId: $addressId)';
}


}

/// @nodoc
abstract mixin class _$CreateAddressResponseCopyWith<$Res> implements $CreateAddressResponseCopyWith<$Res> {
  factory _$CreateAddressResponseCopyWith(_CreateAddressResponse value, $Res Function(_CreateAddressResponse) _then) = __$CreateAddressResponseCopyWithImpl;
@override @useResult
$Res call({
 int addressId
});




}
/// @nodoc
class __$CreateAddressResponseCopyWithImpl<$Res>
    implements _$CreateAddressResponseCopyWith<$Res> {
  __$CreateAddressResponseCopyWithImpl(this._self, this._then);

  final _CreateAddressResponse _self;
  final $Res Function(_CreateAddressResponse) _then;

/// Create a copy of CreateAddressResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? addressId = null,}) {
  return _then(_CreateAddressResponse(
addressId: null == addressId ? _self.addressId : addressId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
