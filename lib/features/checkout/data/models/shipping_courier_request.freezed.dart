// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipping_courier_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ShippingCourierRequest {

 String get courier;
/// Create a copy of ShippingCourierRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShippingCourierRequestCopyWith<ShippingCourierRequest> get copyWith => _$ShippingCourierRequestCopyWithImpl<ShippingCourierRequest>(this as ShippingCourierRequest, _$identity);

  /// Serializes this ShippingCourierRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShippingCourierRequest&&(identical(other.courier, courier) || other.courier == courier));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,courier);

@override
String toString() {
  return 'ShippingCourierRequest(courier: $courier)';
}


}

/// @nodoc
abstract mixin class $ShippingCourierRequestCopyWith<$Res>  {
  factory $ShippingCourierRequestCopyWith(ShippingCourierRequest value, $Res Function(ShippingCourierRequest) _then) = _$ShippingCourierRequestCopyWithImpl;
@useResult
$Res call({
 String courier
});




}
/// @nodoc
class _$ShippingCourierRequestCopyWithImpl<$Res>
    implements $ShippingCourierRequestCopyWith<$Res> {
  _$ShippingCourierRequestCopyWithImpl(this._self, this._then);

  final ShippingCourierRequest _self;
  final $Res Function(ShippingCourierRequest) _then;

/// Create a copy of ShippingCourierRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? courier = null,}) {
  return _then(_self.copyWith(
courier: null == courier ? _self.courier : courier // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ShippingCourierRequest].
extension ShippingCourierRequestPatterns on ShippingCourierRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShippingCourierRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShippingCourierRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShippingCourierRequest value)  $default,){
final _that = this;
switch (_that) {
case _ShippingCourierRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShippingCourierRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ShippingCourierRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String courier)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShippingCourierRequest() when $default != null:
return $default(_that.courier);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String courier)  $default,) {final _that = this;
switch (_that) {
case _ShippingCourierRequest():
return $default(_that.courier);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String courier)?  $default,) {final _that = this;
switch (_that) {
case _ShippingCourierRequest() when $default != null:
return $default(_that.courier);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ShippingCourierRequest implements ShippingCourierRequest {
  const _ShippingCourierRequest({required this.courier});
  factory _ShippingCourierRequest.fromJson(Map<String, dynamic> json) => _$ShippingCourierRequestFromJson(json);

@override final  String courier;

/// Create a copy of ShippingCourierRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShippingCourierRequestCopyWith<_ShippingCourierRequest> get copyWith => __$ShippingCourierRequestCopyWithImpl<_ShippingCourierRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShippingCourierRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShippingCourierRequest&&(identical(other.courier, courier) || other.courier == courier));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,courier);

@override
String toString() {
  return 'ShippingCourierRequest(courier: $courier)';
}


}

/// @nodoc
abstract mixin class _$ShippingCourierRequestCopyWith<$Res> implements $ShippingCourierRequestCopyWith<$Res> {
  factory _$ShippingCourierRequestCopyWith(_ShippingCourierRequest value, $Res Function(_ShippingCourierRequest) _then) = __$ShippingCourierRequestCopyWithImpl;
@override @useResult
$Res call({
 String courier
});




}
/// @nodoc
class __$ShippingCourierRequestCopyWithImpl<$Res>
    implements _$ShippingCourierRequestCopyWith<$Res> {
  __$ShippingCourierRequestCopyWithImpl(this._self, this._then);

  final _ShippingCourierRequest _self;
  final $Res Function(_ShippingCourierRequest) _then;

/// Create a copy of ShippingCourierRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? courier = null,}) {
  return _then(_ShippingCourierRequest(
courier: null == courier ? _self.courier : courier // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
