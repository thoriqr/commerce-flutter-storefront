// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cursor_meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CursorMeta {

 bool get hasMore; String? get nextCursor;
/// Create a copy of CursorMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CursorMetaCopyWith<CursorMeta> get copyWith => _$CursorMetaCopyWithImpl<CursorMeta>(this as CursorMeta, _$identity);

  /// Serializes this CursorMeta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CursorMeta&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hasMore,nextCursor);

@override
String toString() {
  return 'CursorMeta(hasMore: $hasMore, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class $CursorMetaCopyWith<$Res>  {
  factory $CursorMetaCopyWith(CursorMeta value, $Res Function(CursorMeta) _then) = _$CursorMetaCopyWithImpl;
@useResult
$Res call({
 bool hasMore, String? nextCursor
});




}
/// @nodoc
class _$CursorMetaCopyWithImpl<$Res>
    implements $CursorMetaCopyWith<$Res> {
  _$CursorMetaCopyWithImpl(this._self, this._then);

  final CursorMeta _self;
  final $Res Function(CursorMeta) _then;

/// Create a copy of CursorMeta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hasMore = null,Object? nextCursor = freezed,}) {
  return _then(_self.copyWith(
hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CursorMeta].
extension CursorMetaPatterns on CursorMeta {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CursorMeta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CursorMeta() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CursorMeta value)  $default,){
final _that = this;
switch (_that) {
case _CursorMeta():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CursorMeta value)?  $default,){
final _that = this;
switch (_that) {
case _CursorMeta() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool hasMore,  String? nextCursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CursorMeta() when $default != null:
return $default(_that.hasMore,_that.nextCursor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool hasMore,  String? nextCursor)  $default,) {final _that = this;
switch (_that) {
case _CursorMeta():
return $default(_that.hasMore,_that.nextCursor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool hasMore,  String? nextCursor)?  $default,) {final _that = this;
switch (_that) {
case _CursorMeta() when $default != null:
return $default(_that.hasMore,_that.nextCursor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CursorMeta implements CursorMeta {
  const _CursorMeta({required this.hasMore, this.nextCursor});
  factory _CursorMeta.fromJson(Map<String, dynamic> json) => _$CursorMetaFromJson(json);

@override final  bool hasMore;
@override final  String? nextCursor;

/// Create a copy of CursorMeta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CursorMetaCopyWith<_CursorMeta> get copyWith => __$CursorMetaCopyWithImpl<_CursorMeta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CursorMetaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CursorMeta&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hasMore,nextCursor);

@override
String toString() {
  return 'CursorMeta(hasMore: $hasMore, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class _$CursorMetaCopyWith<$Res> implements $CursorMetaCopyWith<$Res> {
  factory _$CursorMetaCopyWith(_CursorMeta value, $Res Function(_CursorMeta) _then) = __$CursorMetaCopyWithImpl;
@override @useResult
$Res call({
 bool hasMore, String? nextCursor
});




}
/// @nodoc
class __$CursorMetaCopyWithImpl<$Res>
    implements _$CursorMetaCopyWith<$Res> {
  __$CursorMetaCopyWithImpl(this._self, this._then);

  final _CursorMeta _self;
  final $Res Function(_CursorMeta) _then;

/// Create a copy of CursorMeta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hasMore = null,Object? nextCursor = freezed,}) {
  return _then(_CursorMeta(
hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
