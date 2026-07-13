// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_checkout_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateCheckoutResponse {

 int get sessionId;
/// Create a copy of CreateCheckoutResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateCheckoutResponseCopyWith<CreateCheckoutResponse> get copyWith => _$CreateCheckoutResponseCopyWithImpl<CreateCheckoutResponse>(this as CreateCheckoutResponse, _$identity);

  /// Serializes this CreateCheckoutResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateCheckoutResponse&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sessionId);

@override
String toString() {
  return 'CreateCheckoutResponse(sessionId: $sessionId)';
}


}

/// @nodoc
abstract mixin class $CreateCheckoutResponseCopyWith<$Res>  {
  factory $CreateCheckoutResponseCopyWith(CreateCheckoutResponse value, $Res Function(CreateCheckoutResponse) _then) = _$CreateCheckoutResponseCopyWithImpl;
@useResult
$Res call({
 int sessionId
});




}
/// @nodoc
class _$CreateCheckoutResponseCopyWithImpl<$Res>
    implements $CreateCheckoutResponseCopyWith<$Res> {
  _$CreateCheckoutResponseCopyWithImpl(this._self, this._then);

  final CreateCheckoutResponse _self;
  final $Res Function(CreateCheckoutResponse) _then;

/// Create a copy of CreateCheckoutResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sessionId = null,}) {
  return _then(_self.copyWith(
sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateCheckoutResponse].
extension CreateCheckoutResponsePatterns on CreateCheckoutResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateCheckoutResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateCheckoutResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateCheckoutResponse value)  $default,){
final _that = this;
switch (_that) {
case _CreateCheckoutResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateCheckoutResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CreateCheckoutResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int sessionId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateCheckoutResponse() when $default != null:
return $default(_that.sessionId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int sessionId)  $default,) {final _that = this;
switch (_that) {
case _CreateCheckoutResponse():
return $default(_that.sessionId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int sessionId)?  $default,) {final _that = this;
switch (_that) {
case _CreateCheckoutResponse() when $default != null:
return $default(_that.sessionId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateCheckoutResponse implements CreateCheckoutResponse {
  const _CreateCheckoutResponse({required this.sessionId});
  factory _CreateCheckoutResponse.fromJson(Map<String, dynamic> json) => _$CreateCheckoutResponseFromJson(json);

@override final  int sessionId;

/// Create a copy of CreateCheckoutResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateCheckoutResponseCopyWith<_CreateCheckoutResponse> get copyWith => __$CreateCheckoutResponseCopyWithImpl<_CreateCheckoutResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateCheckoutResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateCheckoutResponse&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sessionId);

@override
String toString() {
  return 'CreateCheckoutResponse(sessionId: $sessionId)';
}


}

/// @nodoc
abstract mixin class _$CreateCheckoutResponseCopyWith<$Res> implements $CreateCheckoutResponseCopyWith<$Res> {
  factory _$CreateCheckoutResponseCopyWith(_CreateCheckoutResponse value, $Res Function(_CreateCheckoutResponse) _then) = __$CreateCheckoutResponseCopyWithImpl;
@override @useResult
$Res call({
 int sessionId
});




}
/// @nodoc
class __$CreateCheckoutResponseCopyWithImpl<$Res>
    implements _$CreateCheckoutResponseCopyWith<$Res> {
  __$CreateCheckoutResponseCopyWithImpl(this._self, this._then);

  final _CreateCheckoutResponse _self;
  final $Res Function(_CreateCheckoutResponse) _then;

/// Create a copy of CreateCheckoutResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sessionId = null,}) {
  return _then(_CreateCheckoutResponse(
sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
