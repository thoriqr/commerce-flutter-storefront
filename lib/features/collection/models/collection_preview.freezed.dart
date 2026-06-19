// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collection_preview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CollectionPreview {

 int get id; String get name; String get slug; bool get hasMoreProducts; List<ProductSummary> get products;
/// Create a copy of CollectionPreview
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CollectionPreviewCopyWith<CollectionPreview> get copyWith => _$CollectionPreviewCopyWithImpl<CollectionPreview>(this as CollectionPreview, _$identity);

  /// Serializes this CollectionPreview to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CollectionPreview&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.hasMoreProducts, hasMoreProducts) || other.hasMoreProducts == hasMoreProducts)&&const DeepCollectionEquality().equals(other.products, products));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,hasMoreProducts,const DeepCollectionEquality().hash(products));

@override
String toString() {
  return 'CollectionPreview(id: $id, name: $name, slug: $slug, hasMoreProducts: $hasMoreProducts, products: $products)';
}


}

/// @nodoc
abstract mixin class $CollectionPreviewCopyWith<$Res>  {
  factory $CollectionPreviewCopyWith(CollectionPreview value, $Res Function(CollectionPreview) _then) = _$CollectionPreviewCopyWithImpl;
@useResult
$Res call({
 int id, String name, String slug, bool hasMoreProducts, List<ProductSummary> products
});




}
/// @nodoc
class _$CollectionPreviewCopyWithImpl<$Res>
    implements $CollectionPreviewCopyWith<$Res> {
  _$CollectionPreviewCopyWithImpl(this._self, this._then);

  final CollectionPreview _self;
  final $Res Function(CollectionPreview) _then;

/// Create a copy of CollectionPreview
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? hasMoreProducts = null,Object? products = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,hasMoreProducts: null == hasMoreProducts ? _self.hasMoreProducts : hasMoreProducts // ignore: cast_nullable_to_non_nullable
as bool,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<ProductSummary>,
  ));
}

}


/// Adds pattern-matching-related methods to [CollectionPreview].
extension CollectionPreviewPatterns on CollectionPreview {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CollectionPreview value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CollectionPreview() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CollectionPreview value)  $default,){
final _that = this;
switch (_that) {
case _CollectionPreview():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CollectionPreview value)?  $default,){
final _that = this;
switch (_that) {
case _CollectionPreview() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String slug,  bool hasMoreProducts,  List<ProductSummary> products)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CollectionPreview() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.hasMoreProducts,_that.products);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String slug,  bool hasMoreProducts,  List<ProductSummary> products)  $default,) {final _that = this;
switch (_that) {
case _CollectionPreview():
return $default(_that.id,_that.name,_that.slug,_that.hasMoreProducts,_that.products);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String slug,  bool hasMoreProducts,  List<ProductSummary> products)?  $default,) {final _that = this;
switch (_that) {
case _CollectionPreview() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.hasMoreProducts,_that.products);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CollectionPreview implements CollectionPreview {
  const _CollectionPreview({required this.id, required this.name, required this.slug, required this.hasMoreProducts, required final  List<ProductSummary> products}): _products = products;
  factory _CollectionPreview.fromJson(Map<String, dynamic> json) => _$CollectionPreviewFromJson(json);

@override final  int id;
@override final  String name;
@override final  String slug;
@override final  bool hasMoreProducts;
 final  List<ProductSummary> _products;
@override List<ProductSummary> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}


/// Create a copy of CollectionPreview
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CollectionPreviewCopyWith<_CollectionPreview> get copyWith => __$CollectionPreviewCopyWithImpl<_CollectionPreview>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CollectionPreviewToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CollectionPreview&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.hasMoreProducts, hasMoreProducts) || other.hasMoreProducts == hasMoreProducts)&&const DeepCollectionEquality().equals(other._products, _products));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,hasMoreProducts,const DeepCollectionEquality().hash(_products));

@override
String toString() {
  return 'CollectionPreview(id: $id, name: $name, slug: $slug, hasMoreProducts: $hasMoreProducts, products: $products)';
}


}

/// @nodoc
abstract mixin class _$CollectionPreviewCopyWith<$Res> implements $CollectionPreviewCopyWith<$Res> {
  factory _$CollectionPreviewCopyWith(_CollectionPreview value, $Res Function(_CollectionPreview) _then) = __$CollectionPreviewCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String slug, bool hasMoreProducts, List<ProductSummary> products
});




}
/// @nodoc
class __$CollectionPreviewCopyWithImpl<$Res>
    implements _$CollectionPreviewCopyWith<$Res> {
  __$CollectionPreviewCopyWithImpl(this._self, this._then);

  final _CollectionPreview _self;
  final $Res Function(_CollectionPreview) _then;

/// Create a copy of CollectionPreview
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? hasMoreProducts = null,Object? products = null,}) {
  return _then(_CollectionPreview(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,hasMoreProducts: null == hasMoreProducts ? _self.hasMoreProducts : hasMoreProducts // ignore: cast_nullable_to_non_nullable
as bool,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ProductSummary>,
  ));
}


}

// dart format on
