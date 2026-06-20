// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hero_banner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HeroBanner {

 int get id; String get title; String get imageKey; BannerTargetType get targetType; String get targetValue;
/// Create a copy of HeroBanner
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HeroBannerCopyWith<HeroBanner> get copyWith => _$HeroBannerCopyWithImpl<HeroBanner>(this as HeroBanner, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HeroBanner&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageKey, imageKey) || other.imageKey == imageKey)&&(identical(other.targetType, targetType) || other.targetType == targetType)&&(identical(other.targetValue, targetValue) || other.targetValue == targetValue));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,imageKey,targetType,targetValue);

@override
String toString() {
  return 'HeroBanner(id: $id, title: $title, imageKey: $imageKey, targetType: $targetType, targetValue: $targetValue)';
}


}

/// @nodoc
abstract mixin class $HeroBannerCopyWith<$Res>  {
  factory $HeroBannerCopyWith(HeroBanner value, $Res Function(HeroBanner) _then) = _$HeroBannerCopyWithImpl;
@useResult
$Res call({
 int id, String title, String imageKey, BannerTargetType targetType, String targetValue
});




}
/// @nodoc
class _$HeroBannerCopyWithImpl<$Res>
    implements $HeroBannerCopyWith<$Res> {
  _$HeroBannerCopyWithImpl(this._self, this._then);

  final HeroBanner _self;
  final $Res Function(HeroBanner) _then;

/// Create a copy of HeroBanner
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? imageKey = null,Object? targetType = null,Object? targetValue = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,imageKey: null == imageKey ? _self.imageKey : imageKey // ignore: cast_nullable_to_non_nullable
as String,targetType: null == targetType ? _self.targetType : targetType // ignore: cast_nullable_to_non_nullable
as BannerTargetType,targetValue: null == targetValue ? _self.targetValue : targetValue // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [HeroBanner].
extension HeroBannerPatterns on HeroBanner {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HeroBanner value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HeroBanner() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HeroBanner value)  $default,){
final _that = this;
switch (_that) {
case _HeroBanner():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HeroBanner value)?  $default,){
final _that = this;
switch (_that) {
case _HeroBanner() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  String imageKey,  BannerTargetType targetType,  String targetValue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HeroBanner() when $default != null:
return $default(_that.id,_that.title,_that.imageKey,_that.targetType,_that.targetValue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  String imageKey,  BannerTargetType targetType,  String targetValue)  $default,) {final _that = this;
switch (_that) {
case _HeroBanner():
return $default(_that.id,_that.title,_that.imageKey,_that.targetType,_that.targetValue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  String imageKey,  BannerTargetType targetType,  String targetValue)?  $default,) {final _that = this;
switch (_that) {
case _HeroBanner() when $default != null:
return $default(_that.id,_that.title,_that.imageKey,_that.targetType,_that.targetValue);case _:
  return null;

}
}

}

/// @nodoc


class _HeroBanner implements HeroBanner {
  const _HeroBanner({required this.id, required this.title, required this.imageKey, required this.targetType, required this.targetValue});
  

@override final  int id;
@override final  String title;
@override final  String imageKey;
@override final  BannerTargetType targetType;
@override final  String targetValue;

/// Create a copy of HeroBanner
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HeroBannerCopyWith<_HeroBanner> get copyWith => __$HeroBannerCopyWithImpl<_HeroBanner>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HeroBanner&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageKey, imageKey) || other.imageKey == imageKey)&&(identical(other.targetType, targetType) || other.targetType == targetType)&&(identical(other.targetValue, targetValue) || other.targetValue == targetValue));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,imageKey,targetType,targetValue);

@override
String toString() {
  return 'HeroBanner(id: $id, title: $title, imageKey: $imageKey, targetType: $targetType, targetValue: $targetValue)';
}


}

/// @nodoc
abstract mixin class _$HeroBannerCopyWith<$Res> implements $HeroBannerCopyWith<$Res> {
  factory _$HeroBannerCopyWith(_HeroBanner value, $Res Function(_HeroBanner) _then) = __$HeroBannerCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String imageKey, BannerTargetType targetType, String targetValue
});




}
/// @nodoc
class __$HeroBannerCopyWithImpl<$Res>
    implements _$HeroBannerCopyWith<$Res> {
  __$HeroBannerCopyWithImpl(this._self, this._then);

  final _HeroBanner _self;
  final $Res Function(_HeroBanner) _then;

/// Create a copy of HeroBanner
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? imageKey = null,Object? targetType = null,Object? targetValue = null,}) {
  return _then(_HeroBanner(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,imageKey: null == imageKey ? _self.imageKey : imageKey // ignore: cast_nullable_to_non_nullable
as String,targetType: null == targetType ? _self.targetType : targetType // ignore: cast_nullable_to_non_nullable
as BannerTargetType,targetValue: null == targetValue ? _self.targetValue : targetValue // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
