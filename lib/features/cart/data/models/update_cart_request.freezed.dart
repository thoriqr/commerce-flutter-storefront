// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_cart_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateCartRequest {

 int get quantity;
/// Create a copy of UpdateCartRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateCartRequestCopyWith<UpdateCartRequest> get copyWith => _$UpdateCartRequestCopyWithImpl<UpdateCartRequest>(this as UpdateCartRequest, _$identity);

  /// Serializes this UpdateCartRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateCartRequest&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,quantity);

@override
String toString() {
  return 'UpdateCartRequest(quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $UpdateCartRequestCopyWith<$Res>  {
  factory $UpdateCartRequestCopyWith(UpdateCartRequest value, $Res Function(UpdateCartRequest) _then) = _$UpdateCartRequestCopyWithImpl;
@useResult
$Res call({
 int quantity
});




}
/// @nodoc
class _$UpdateCartRequestCopyWithImpl<$Res>
    implements $UpdateCartRequestCopyWith<$Res> {
  _$UpdateCartRequestCopyWithImpl(this._self, this._then);

  final UpdateCartRequest _self;
  final $Res Function(UpdateCartRequest) _then;

/// Create a copy of UpdateCartRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? quantity = null,}) {
  return _then(_self.copyWith(
quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateCartRequest].
extension UpdateCartRequestPatterns on UpdateCartRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateCartRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateCartRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateCartRequest value)  $default,){
final _that = this;
switch (_that) {
case _UpdateCartRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateCartRequest value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateCartRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int quantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateCartRequest() when $default != null:
return $default(_that.quantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int quantity)  $default,) {final _that = this;
switch (_that) {
case _UpdateCartRequest():
return $default(_that.quantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int quantity)?  $default,) {final _that = this;
switch (_that) {
case _UpdateCartRequest() when $default != null:
return $default(_that.quantity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateCartRequest implements UpdateCartRequest {
  const _UpdateCartRequest({required this.quantity});
  factory _UpdateCartRequest.fromJson(Map<String, dynamic> json) => _$UpdateCartRequestFromJson(json);

@override final  int quantity;

/// Create a copy of UpdateCartRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateCartRequestCopyWith<_UpdateCartRequest> get copyWith => __$UpdateCartRequestCopyWithImpl<_UpdateCartRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateCartRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateCartRequest&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,quantity);

@override
String toString() {
  return 'UpdateCartRequest(quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$UpdateCartRequestCopyWith<$Res> implements $UpdateCartRequestCopyWith<$Res> {
  factory _$UpdateCartRequestCopyWith(_UpdateCartRequest value, $Res Function(_UpdateCartRequest) _then) = __$UpdateCartRequestCopyWithImpl;
@override @useResult
$Res call({
 int quantity
});




}
/// @nodoc
class __$UpdateCartRequestCopyWithImpl<$Res>
    implements _$UpdateCartRequestCopyWith<$Res> {
  __$UpdateCartRequestCopyWithImpl(this._self, this._then);

  final _UpdateCartRequest _self;
  final $Res Function(_UpdateCartRequest) _then;

/// Create a copy of UpdateCartRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? quantity = null,}) {
  return _then(_UpdateCartRequest(
quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
