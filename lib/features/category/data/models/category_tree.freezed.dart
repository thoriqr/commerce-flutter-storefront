// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_tree.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CategoryTree {

 int get id; int? get parentId; String get name; String get slug; String get slugPath; CategoryTree get children;
/// Create a copy of CategoryTree
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryTreeCopyWith<CategoryTree> get copyWith => _$CategoryTreeCopyWithImpl<CategoryTree>(this as CategoryTree, _$identity);

  /// Serializes this CategoryTree to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryTree&&(identical(other.id, id) || other.id == id)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.slugPath, slugPath) || other.slugPath == slugPath)&&(identical(other.children, children) || other.children == children));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,parentId,name,slug,slugPath,children);

@override
String toString() {
  return 'CategoryTree(id: $id, parentId: $parentId, name: $name, slug: $slug, slugPath: $slugPath, children: $children)';
}


}

/// @nodoc
abstract mixin class $CategoryTreeCopyWith<$Res>  {
  factory $CategoryTreeCopyWith(CategoryTree value, $Res Function(CategoryTree) _then) = _$CategoryTreeCopyWithImpl;
@useResult
$Res call({
 int id, int? parentId, String name, String slug, String slugPath, CategoryTree children
});


$CategoryTreeCopyWith<$Res> get children;

}
/// @nodoc
class _$CategoryTreeCopyWithImpl<$Res>
    implements $CategoryTreeCopyWith<$Res> {
  _$CategoryTreeCopyWithImpl(this._self, this._then);

  final CategoryTree _self;
  final $Res Function(CategoryTree) _then;

/// Create a copy of CategoryTree
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? parentId = freezed,Object? name = null,Object? slug = null,Object? slugPath = null,Object? children = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as int?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,slugPath: null == slugPath ? _self.slugPath : slugPath // ignore: cast_nullable_to_non_nullable
as String,children: null == children ? _self.children : children // ignore: cast_nullable_to_non_nullable
as CategoryTree,
  ));
}
/// Create a copy of CategoryTree
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryTreeCopyWith<$Res> get children {
  
  return $CategoryTreeCopyWith<$Res>(_self.children, (value) {
    return _then(_self.copyWith(children: value));
  });
}
}


/// Adds pattern-matching-related methods to [CategoryTree].
extension CategoryTreePatterns on CategoryTree {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryTree value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryTree() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryTree value)  $default,){
final _that = this;
switch (_that) {
case _CategoryTree():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryTree value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryTree() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int? parentId,  String name,  String slug,  String slugPath,  CategoryTree children)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryTree() when $default != null:
return $default(_that.id,_that.parentId,_that.name,_that.slug,_that.slugPath,_that.children);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int? parentId,  String name,  String slug,  String slugPath,  CategoryTree children)  $default,) {final _that = this;
switch (_that) {
case _CategoryTree():
return $default(_that.id,_that.parentId,_that.name,_that.slug,_that.slugPath,_that.children);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int? parentId,  String name,  String slug,  String slugPath,  CategoryTree children)?  $default,) {final _that = this;
switch (_that) {
case _CategoryTree() when $default != null:
return $default(_that.id,_that.parentId,_that.name,_that.slug,_that.slugPath,_that.children);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryTree implements CategoryTree {
  const _CategoryTree({required this.id, required this.parentId, required this.name, required this.slug, required this.slugPath, required this.children});
  factory _CategoryTree.fromJson(Map<String, dynamic> json) => _$CategoryTreeFromJson(json);

@override final  int id;
@override final  int? parentId;
@override final  String name;
@override final  String slug;
@override final  String slugPath;
@override final  CategoryTree children;

/// Create a copy of CategoryTree
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryTreeCopyWith<_CategoryTree> get copyWith => __$CategoryTreeCopyWithImpl<_CategoryTree>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryTreeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryTree&&(identical(other.id, id) || other.id == id)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.slugPath, slugPath) || other.slugPath == slugPath)&&(identical(other.children, children) || other.children == children));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,parentId,name,slug,slugPath,children);

@override
String toString() {
  return 'CategoryTree(id: $id, parentId: $parentId, name: $name, slug: $slug, slugPath: $slugPath, children: $children)';
}


}

/// @nodoc
abstract mixin class _$CategoryTreeCopyWith<$Res> implements $CategoryTreeCopyWith<$Res> {
  factory _$CategoryTreeCopyWith(_CategoryTree value, $Res Function(_CategoryTree) _then) = __$CategoryTreeCopyWithImpl;
@override @useResult
$Res call({
 int id, int? parentId, String name, String slug, String slugPath, CategoryTree children
});


@override $CategoryTreeCopyWith<$Res> get children;

}
/// @nodoc
class __$CategoryTreeCopyWithImpl<$Res>
    implements _$CategoryTreeCopyWith<$Res> {
  __$CategoryTreeCopyWithImpl(this._self, this._then);

  final _CategoryTree _self;
  final $Res Function(_CategoryTree) _then;

/// Create a copy of CategoryTree
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? parentId = freezed,Object? name = null,Object? slug = null,Object? slugPath = null,Object? children = null,}) {
  return _then(_CategoryTree(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as int?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,slugPath: null == slugPath ? _self.slugPath : slugPath // ignore: cast_nullable_to_non_nullable
as String,children: null == children ? _self.children : children // ignore: cast_nullable_to_non_nullable
as CategoryTree,
  ));
}

/// Create a copy of CategoryTree
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryTreeCopyWith<$Res> get children {
  
  return $CategoryTreeCopyWith<$Res>(_self.children, (value) {
    return _then(_self.copyWith(children: value));
  });
}
}

// dart format on
