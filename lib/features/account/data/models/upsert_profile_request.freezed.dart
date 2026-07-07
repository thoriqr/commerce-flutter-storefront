// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upsert_profile_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpsertProfileRequest {

 String get displayName;
/// Create a copy of UpsertProfileRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpsertProfileRequestCopyWith<UpsertProfileRequest> get copyWith => _$UpsertProfileRequestCopyWithImpl<UpsertProfileRequest>(this as UpsertProfileRequest, _$identity);

  /// Serializes this UpsertProfileRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpsertProfileRequest&&(identical(other.displayName, displayName) || other.displayName == displayName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,displayName);

@override
String toString() {
  return 'UpsertProfileRequest(displayName: $displayName)';
}


}

/// @nodoc
abstract mixin class $UpsertProfileRequestCopyWith<$Res>  {
  factory $UpsertProfileRequestCopyWith(UpsertProfileRequest value, $Res Function(UpsertProfileRequest) _then) = _$UpsertProfileRequestCopyWithImpl;
@useResult
$Res call({
 String displayName
});




}
/// @nodoc
class _$UpsertProfileRequestCopyWithImpl<$Res>
    implements $UpsertProfileRequestCopyWith<$Res> {
  _$UpsertProfileRequestCopyWithImpl(this._self, this._then);

  final UpsertProfileRequest _self;
  final $Res Function(UpsertProfileRequest) _then;

/// Create a copy of UpsertProfileRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? displayName = null,}) {
  return _then(_self.copyWith(
displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UpsertProfileRequest].
extension UpsertProfileRequestPatterns on UpsertProfileRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpsertProfileRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpsertProfileRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpsertProfileRequest value)  $default,){
final _that = this;
switch (_that) {
case _UpsertProfileRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpsertProfileRequest value)?  $default,){
final _that = this;
switch (_that) {
case _UpsertProfileRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String displayName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpsertProfileRequest() when $default != null:
return $default(_that.displayName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String displayName)  $default,) {final _that = this;
switch (_that) {
case _UpsertProfileRequest():
return $default(_that.displayName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String displayName)?  $default,) {final _that = this;
switch (_that) {
case _UpsertProfileRequest() when $default != null:
return $default(_that.displayName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpsertProfileRequest implements UpsertProfileRequest {
  const _UpsertProfileRequest({required this.displayName});
  factory _UpsertProfileRequest.fromJson(Map<String, dynamic> json) => _$UpsertProfileRequestFromJson(json);

@override final  String displayName;

/// Create a copy of UpsertProfileRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpsertProfileRequestCopyWith<_UpsertProfileRequest> get copyWith => __$UpsertProfileRequestCopyWithImpl<_UpsertProfileRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpsertProfileRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpsertProfileRequest&&(identical(other.displayName, displayName) || other.displayName == displayName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,displayName);

@override
String toString() {
  return 'UpsertProfileRequest(displayName: $displayName)';
}


}

/// @nodoc
abstract mixin class _$UpsertProfileRequestCopyWith<$Res> implements $UpsertProfileRequestCopyWith<$Res> {
  factory _$UpsertProfileRequestCopyWith(_UpsertProfileRequest value, $Res Function(_UpsertProfileRequest) _then) = __$UpsertProfileRequestCopyWithImpl;
@override @useResult
$Res call({
 String displayName
});




}
/// @nodoc
class __$UpsertProfileRequestCopyWithImpl<$Res>
    implements _$UpsertProfileRequestCopyWith<$Res> {
  __$UpsertProfileRequestCopyWithImpl(this._self, this._then);

  final _UpsertProfileRequest _self;
  final $Res Function(_UpsertProfileRequest) _then;

/// Create a copy of UpsertProfileRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? displayName = null,}) {
  return _then(_UpsertProfileRequest(
displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
