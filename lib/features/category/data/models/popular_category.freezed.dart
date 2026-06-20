// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'popular_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PopularCategory {

 int get id; String get name; String get slug; String get slugPath; int get totalSold;
/// Create a copy of PopularCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PopularCategoryCopyWith<PopularCategory> get copyWith => _$PopularCategoryCopyWithImpl<PopularCategory>(this as PopularCategory, _$identity);

  /// Serializes this PopularCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PopularCategory&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.slugPath, slugPath) || other.slugPath == slugPath)&&(identical(other.totalSold, totalSold) || other.totalSold == totalSold));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,slugPath,totalSold);

@override
String toString() {
  return 'PopularCategory(id: $id, name: $name, slug: $slug, slugPath: $slugPath, totalSold: $totalSold)';
}


}

/// @nodoc
abstract mixin class $PopularCategoryCopyWith<$Res>  {
  factory $PopularCategoryCopyWith(PopularCategory value, $Res Function(PopularCategory) _then) = _$PopularCategoryCopyWithImpl;
@useResult
$Res call({
 int id, String name, String slug, String slugPath, int totalSold
});




}
/// @nodoc
class _$PopularCategoryCopyWithImpl<$Res>
    implements $PopularCategoryCopyWith<$Res> {
  _$PopularCategoryCopyWithImpl(this._self, this._then);

  final PopularCategory _self;
  final $Res Function(PopularCategory) _then;

/// Create a copy of PopularCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? slugPath = null,Object? totalSold = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,slugPath: null == slugPath ? _self.slugPath : slugPath // ignore: cast_nullable_to_non_nullable
as String,totalSold: null == totalSold ? _self.totalSold : totalSold // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PopularCategory].
extension PopularCategoryPatterns on PopularCategory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PopularCategory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PopularCategory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PopularCategory value)  $default,){
final _that = this;
switch (_that) {
case _PopularCategory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PopularCategory value)?  $default,){
final _that = this;
switch (_that) {
case _PopularCategory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String slug,  String slugPath,  int totalSold)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PopularCategory() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.slugPath,_that.totalSold);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String slug,  String slugPath,  int totalSold)  $default,) {final _that = this;
switch (_that) {
case _PopularCategory():
return $default(_that.id,_that.name,_that.slug,_that.slugPath,_that.totalSold);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String slug,  String slugPath,  int totalSold)?  $default,) {final _that = this;
switch (_that) {
case _PopularCategory() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.slugPath,_that.totalSold);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PopularCategory implements PopularCategory {
  const _PopularCategory({required this.id, required this.name, required this.slug, required this.slugPath, required this.totalSold});
  factory _PopularCategory.fromJson(Map<String, dynamic> json) => _$PopularCategoryFromJson(json);

@override final  int id;
@override final  String name;
@override final  String slug;
@override final  String slugPath;
@override final  int totalSold;

/// Create a copy of PopularCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PopularCategoryCopyWith<_PopularCategory> get copyWith => __$PopularCategoryCopyWithImpl<_PopularCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PopularCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PopularCategory&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.slugPath, slugPath) || other.slugPath == slugPath)&&(identical(other.totalSold, totalSold) || other.totalSold == totalSold));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,slugPath,totalSold);

@override
String toString() {
  return 'PopularCategory(id: $id, name: $name, slug: $slug, slugPath: $slugPath, totalSold: $totalSold)';
}


}

/// @nodoc
abstract mixin class _$PopularCategoryCopyWith<$Res> implements $PopularCategoryCopyWith<$Res> {
  factory _$PopularCategoryCopyWith(_PopularCategory value, $Res Function(_PopularCategory) _then) = __$PopularCategoryCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String slug, String slugPath, int totalSold
});




}
/// @nodoc
class __$PopularCategoryCopyWithImpl<$Res>
    implements _$PopularCategoryCopyWith<$Res> {
  __$PopularCategoryCopyWithImpl(this._self, this._then);

  final _PopularCategory _self;
  final $Res Function(_PopularCategory) _then;

/// Create a copy of PopularCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? slugPath = null,Object? totalSold = null,}) {
  return _then(_PopularCategory(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,slugPath: null == slugPath ? _self.slugPath : slugPath // ignore: cast_nullable_to_non_nullable
as String,totalSold: null == totalSold ? _self.totalSold : totalSold // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
