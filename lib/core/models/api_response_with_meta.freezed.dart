// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response_with_meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApiResponseWithMeta<T> {

 bool get success; T get data; CursorMeta get meta;
/// Create a copy of ApiResponseWithMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiResponseWithMetaCopyWith<T, ApiResponseWithMeta<T>> get copyWith => _$ApiResponseWithMetaCopyWithImpl<T, ApiResponseWithMeta<T>>(this as ApiResponseWithMeta<T>, _$identity);

  /// Serializes this ApiResponseWithMeta to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiResponseWithMeta<T>&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(data),meta);

@override
String toString() {
  return 'ApiResponseWithMeta<$T>(success: $success, data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $ApiResponseWithMetaCopyWith<T,$Res>  {
  factory $ApiResponseWithMetaCopyWith(ApiResponseWithMeta<T> value, $Res Function(ApiResponseWithMeta<T>) _then) = _$ApiResponseWithMetaCopyWithImpl;
@useResult
$Res call({
 bool success, T data, CursorMeta meta
});


$CursorMetaCopyWith<$Res> get meta;

}
/// @nodoc
class _$ApiResponseWithMetaCopyWithImpl<T,$Res>
    implements $ApiResponseWithMetaCopyWith<T, $Res> {
  _$ApiResponseWithMetaCopyWithImpl(this._self, this._then);

  final ApiResponseWithMeta<T> _self;
  final $Res Function(ApiResponseWithMeta<T>) _then;

/// Create a copy of ApiResponseWithMeta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = freezed,Object? meta = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as CursorMeta,
  ));
}
/// Create a copy of ApiResponseWithMeta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CursorMetaCopyWith<$Res> get meta {
  
  return $CursorMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [ApiResponseWithMeta].
extension ApiResponseWithMetaPatterns<T> on ApiResponseWithMeta<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApiResponseWithMeta<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApiResponseWithMeta() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApiResponseWithMeta<T> value)  $default,){
final _that = this;
switch (_that) {
case _ApiResponseWithMeta():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApiResponseWithMeta<T> value)?  $default,){
final _that = this;
switch (_that) {
case _ApiResponseWithMeta() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  T data,  CursorMeta meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApiResponseWithMeta() when $default != null:
return $default(_that.success,_that.data,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  T data,  CursorMeta meta)  $default,) {final _that = this;
switch (_that) {
case _ApiResponseWithMeta():
return $default(_that.success,_that.data,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  T data,  CursorMeta meta)?  $default,) {final _that = this;
switch (_that) {
case _ApiResponseWithMeta() when $default != null:
return $default(_that.success,_that.data,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)

class _ApiResponseWithMeta<T> implements ApiResponseWithMeta<T> {
  const _ApiResponseWithMeta({required this.success, required this.data, required this.meta});
  factory _ApiResponseWithMeta.fromJson(Map<String, dynamic> json,T Function(Object?) fromJsonT) => _$ApiResponseWithMetaFromJson(json,fromJsonT);

@override final  bool success;
@override final  T data;
@override final  CursorMeta meta;

/// Create a copy of ApiResponseWithMeta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApiResponseWithMetaCopyWith<T, _ApiResponseWithMeta<T>> get copyWith => __$ApiResponseWithMetaCopyWithImpl<T, _ApiResponseWithMeta<T>>(this, _$identity);

@override
Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
  return _$ApiResponseWithMetaToJson<T>(this, toJsonT);
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApiResponseWithMeta<T>&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(data),meta);

@override
String toString() {
  return 'ApiResponseWithMeta<$T>(success: $success, data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$ApiResponseWithMetaCopyWith<T,$Res> implements $ApiResponseWithMetaCopyWith<T, $Res> {
  factory _$ApiResponseWithMetaCopyWith(_ApiResponseWithMeta<T> value, $Res Function(_ApiResponseWithMeta<T>) _then) = __$ApiResponseWithMetaCopyWithImpl;
@override @useResult
$Res call({
 bool success, T data, CursorMeta meta
});


@override $CursorMetaCopyWith<$Res> get meta;

}
/// @nodoc
class __$ApiResponseWithMetaCopyWithImpl<T,$Res>
    implements _$ApiResponseWithMetaCopyWith<T, $Res> {
  __$ApiResponseWithMetaCopyWithImpl(this._self, this._then);

  final _ApiResponseWithMeta<T> _self;
  final $Res Function(_ApiResponseWithMeta<T>) _then;

/// Create a copy of ApiResponseWithMeta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = freezed,Object? meta = null,}) {
  return _then(_ApiResponseWithMeta<T>(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as CursorMeta,
  ));
}

/// Create a copy of ApiResponseWithMeta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CursorMetaCopyWith<$Res> get meta {
  
  return $CursorMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}

// dart format on
