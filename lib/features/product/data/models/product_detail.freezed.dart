// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductDetail {

 int get id; String get name; String get slug; String get description; bool get isAvailable; ProductDetailWarning? get warning; bool get isVariant; int get initialVariantId; ProductCategory get category; List<ProductDimension> get dimensions; List<ProductVariantOption> get variants; List<ProductImage> get images;
/// Create a copy of ProductDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductDetailCopyWith<ProductDetail> get copyWith => _$ProductDetailCopyWithImpl<ProductDetail>(this as ProductDetail, _$identity);

  /// Serializes this ProductDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.description, description) || other.description == description)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable)&&(identical(other.warning, warning) || other.warning == warning)&&(identical(other.isVariant, isVariant) || other.isVariant == isVariant)&&(identical(other.initialVariantId, initialVariantId) || other.initialVariantId == initialVariantId)&&(identical(other.category, category) || other.category == category)&&const DeepCollectionEquality().equals(other.dimensions, dimensions)&&const DeepCollectionEquality().equals(other.variants, variants)&&const DeepCollectionEquality().equals(other.images, images));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,description,isAvailable,warning,isVariant,initialVariantId,category,const DeepCollectionEquality().hash(dimensions),const DeepCollectionEquality().hash(variants),const DeepCollectionEquality().hash(images));

@override
String toString() {
  return 'ProductDetail(id: $id, name: $name, slug: $slug, description: $description, isAvailable: $isAvailable, warning: $warning, isVariant: $isVariant, initialVariantId: $initialVariantId, category: $category, dimensions: $dimensions, variants: $variants, images: $images)';
}


}

/// @nodoc
abstract mixin class $ProductDetailCopyWith<$Res>  {
  factory $ProductDetailCopyWith(ProductDetail value, $Res Function(ProductDetail) _then) = _$ProductDetailCopyWithImpl;
@useResult
$Res call({
 int id, String name, String slug, String description, bool isAvailable, ProductDetailWarning? warning, bool isVariant, int initialVariantId, ProductCategory category, List<ProductDimension> dimensions, List<ProductVariantOption> variants, List<ProductImage> images
});


$ProductCategoryCopyWith<$Res> get category;

}
/// @nodoc
class _$ProductDetailCopyWithImpl<$Res>
    implements $ProductDetailCopyWith<$Res> {
  _$ProductDetailCopyWithImpl(this._self, this._then);

  final ProductDetail _self;
  final $Res Function(ProductDetail) _then;

/// Create a copy of ProductDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? description = null,Object? isAvailable = null,Object? warning = freezed,Object? isVariant = null,Object? initialVariantId = null,Object? category = null,Object? dimensions = null,Object? variants = null,Object? images = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,warning: freezed == warning ? _self.warning : warning // ignore: cast_nullable_to_non_nullable
as ProductDetailWarning?,isVariant: null == isVariant ? _self.isVariant : isVariant // ignore: cast_nullable_to_non_nullable
as bool,initialVariantId: null == initialVariantId ? _self.initialVariantId : initialVariantId // ignore: cast_nullable_to_non_nullable
as int,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as ProductCategory,dimensions: null == dimensions ? _self.dimensions : dimensions // ignore: cast_nullable_to_non_nullable
as List<ProductDimension>,variants: null == variants ? _self.variants : variants // ignore: cast_nullable_to_non_nullable
as List<ProductVariantOption>,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<ProductImage>,
  ));
}
/// Create a copy of ProductDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCategoryCopyWith<$Res> get category {
  
  return $ProductCategoryCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductDetail].
extension ProductDetailPatterns on ProductDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductDetail value)  $default,){
final _that = this;
switch (_that) {
case _ProductDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductDetail value)?  $default,){
final _that = this;
switch (_that) {
case _ProductDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String slug,  String description,  bool isAvailable,  ProductDetailWarning? warning,  bool isVariant,  int initialVariantId,  ProductCategory category,  List<ProductDimension> dimensions,  List<ProductVariantOption> variants,  List<ProductImage> images)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductDetail() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.description,_that.isAvailable,_that.warning,_that.isVariant,_that.initialVariantId,_that.category,_that.dimensions,_that.variants,_that.images);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String slug,  String description,  bool isAvailable,  ProductDetailWarning? warning,  bool isVariant,  int initialVariantId,  ProductCategory category,  List<ProductDimension> dimensions,  List<ProductVariantOption> variants,  List<ProductImage> images)  $default,) {final _that = this;
switch (_that) {
case _ProductDetail():
return $default(_that.id,_that.name,_that.slug,_that.description,_that.isAvailable,_that.warning,_that.isVariant,_that.initialVariantId,_that.category,_that.dimensions,_that.variants,_that.images);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String slug,  String description,  bool isAvailable,  ProductDetailWarning? warning,  bool isVariant,  int initialVariantId,  ProductCategory category,  List<ProductDimension> dimensions,  List<ProductVariantOption> variants,  List<ProductImage> images)?  $default,) {final _that = this;
switch (_that) {
case _ProductDetail() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.description,_that.isAvailable,_that.warning,_that.isVariant,_that.initialVariantId,_that.category,_that.dimensions,_that.variants,_that.images);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductDetail implements ProductDetail {
  const _ProductDetail({required this.id, required this.name, required this.slug, required this.description, required this.isAvailable, required this.warning, required this.isVariant, required this.initialVariantId, required this.category, required final  List<ProductDimension> dimensions, required final  List<ProductVariantOption> variants, required final  List<ProductImage> images}): _dimensions = dimensions,_variants = variants,_images = images;
  factory _ProductDetail.fromJson(Map<String, dynamic> json) => _$ProductDetailFromJson(json);

@override final  int id;
@override final  String name;
@override final  String slug;
@override final  String description;
@override final  bool isAvailable;
@override final  ProductDetailWarning? warning;
@override final  bool isVariant;
@override final  int initialVariantId;
@override final  ProductCategory category;
 final  List<ProductDimension> _dimensions;
@override List<ProductDimension> get dimensions {
  if (_dimensions is EqualUnmodifiableListView) return _dimensions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_dimensions);
}

 final  List<ProductVariantOption> _variants;
@override List<ProductVariantOption> get variants {
  if (_variants is EqualUnmodifiableListView) return _variants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_variants);
}

 final  List<ProductImage> _images;
@override List<ProductImage> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}


/// Create a copy of ProductDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductDetailCopyWith<_ProductDetail> get copyWith => __$ProductDetailCopyWithImpl<_ProductDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.description, description) || other.description == description)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable)&&(identical(other.warning, warning) || other.warning == warning)&&(identical(other.isVariant, isVariant) || other.isVariant == isVariant)&&(identical(other.initialVariantId, initialVariantId) || other.initialVariantId == initialVariantId)&&(identical(other.category, category) || other.category == category)&&const DeepCollectionEquality().equals(other._dimensions, _dimensions)&&const DeepCollectionEquality().equals(other._variants, _variants)&&const DeepCollectionEquality().equals(other._images, _images));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,description,isAvailable,warning,isVariant,initialVariantId,category,const DeepCollectionEquality().hash(_dimensions),const DeepCollectionEquality().hash(_variants),const DeepCollectionEquality().hash(_images));

@override
String toString() {
  return 'ProductDetail(id: $id, name: $name, slug: $slug, description: $description, isAvailable: $isAvailable, warning: $warning, isVariant: $isVariant, initialVariantId: $initialVariantId, category: $category, dimensions: $dimensions, variants: $variants, images: $images)';
}


}

/// @nodoc
abstract mixin class _$ProductDetailCopyWith<$Res> implements $ProductDetailCopyWith<$Res> {
  factory _$ProductDetailCopyWith(_ProductDetail value, $Res Function(_ProductDetail) _then) = __$ProductDetailCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String slug, String description, bool isAvailable, ProductDetailWarning? warning, bool isVariant, int initialVariantId, ProductCategory category, List<ProductDimension> dimensions, List<ProductVariantOption> variants, List<ProductImage> images
});


@override $ProductCategoryCopyWith<$Res> get category;

}
/// @nodoc
class __$ProductDetailCopyWithImpl<$Res>
    implements _$ProductDetailCopyWith<$Res> {
  __$ProductDetailCopyWithImpl(this._self, this._then);

  final _ProductDetail _self;
  final $Res Function(_ProductDetail) _then;

/// Create a copy of ProductDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? description = null,Object? isAvailable = null,Object? warning = freezed,Object? isVariant = null,Object? initialVariantId = null,Object? category = null,Object? dimensions = null,Object? variants = null,Object? images = null,}) {
  return _then(_ProductDetail(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,warning: freezed == warning ? _self.warning : warning // ignore: cast_nullable_to_non_nullable
as ProductDetailWarning?,isVariant: null == isVariant ? _self.isVariant : isVariant // ignore: cast_nullable_to_non_nullable
as bool,initialVariantId: null == initialVariantId ? _self.initialVariantId : initialVariantId // ignore: cast_nullable_to_non_nullable
as int,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as ProductCategory,dimensions: null == dimensions ? _self._dimensions : dimensions // ignore: cast_nullable_to_non_nullable
as List<ProductDimension>,variants: null == variants ? _self._variants : variants // ignore: cast_nullable_to_non_nullable
as List<ProductVariantOption>,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<ProductImage>,
  ));
}

/// Create a copy of ProductDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCategoryCopyWith<$Res> get category {
  
  return $ProductCategoryCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// @nodoc
mixin _$ProductImage {

 int get id; String get imageKey; ProductImageType get type; ProductImageSignature? get signature;
/// Create a copy of ProductImage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductImageCopyWith<ProductImage> get copyWith => _$ProductImageCopyWithImpl<ProductImage>(this as ProductImage, _$identity);

  /// Serializes this ProductImage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductImage&&(identical(other.id, id) || other.id == id)&&(identical(other.imageKey, imageKey) || other.imageKey == imageKey)&&(identical(other.type, type) || other.type == type)&&(identical(other.signature, signature) || other.signature == signature));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,imageKey,type,signature);

@override
String toString() {
  return 'ProductImage(id: $id, imageKey: $imageKey, type: $type, signature: $signature)';
}


}

/// @nodoc
abstract mixin class $ProductImageCopyWith<$Res>  {
  factory $ProductImageCopyWith(ProductImage value, $Res Function(ProductImage) _then) = _$ProductImageCopyWithImpl;
@useResult
$Res call({
 int id, String imageKey, ProductImageType type, ProductImageSignature? signature
});


$ProductImageSignatureCopyWith<$Res>? get signature;

}
/// @nodoc
class _$ProductImageCopyWithImpl<$Res>
    implements $ProductImageCopyWith<$Res> {
  _$ProductImageCopyWithImpl(this._self, this._then);

  final ProductImage _self;
  final $Res Function(ProductImage) _then;

/// Create a copy of ProductImage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? imageKey = null,Object? type = null,Object? signature = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,imageKey: null == imageKey ? _self.imageKey : imageKey // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ProductImageType,signature: freezed == signature ? _self.signature : signature // ignore: cast_nullable_to_non_nullable
as ProductImageSignature?,
  ));
}
/// Create a copy of ProductImage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductImageSignatureCopyWith<$Res>? get signature {
    if (_self.signature == null) {
    return null;
  }

  return $ProductImageSignatureCopyWith<$Res>(_self.signature!, (value) {
    return _then(_self.copyWith(signature: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductImage].
extension ProductImagePatterns on ProductImage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductImage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductImage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductImage value)  $default,){
final _that = this;
switch (_that) {
case _ProductImage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductImage value)?  $default,){
final _that = this;
switch (_that) {
case _ProductImage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String imageKey,  ProductImageType type,  ProductImageSignature? signature)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductImage() when $default != null:
return $default(_that.id,_that.imageKey,_that.type,_that.signature);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String imageKey,  ProductImageType type,  ProductImageSignature? signature)  $default,) {final _that = this;
switch (_that) {
case _ProductImage():
return $default(_that.id,_that.imageKey,_that.type,_that.signature);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String imageKey,  ProductImageType type,  ProductImageSignature? signature)?  $default,) {final _that = this;
switch (_that) {
case _ProductImage() when $default != null:
return $default(_that.id,_that.imageKey,_that.type,_that.signature);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductImage implements ProductImage {
  const _ProductImage({required this.id, required this.imageKey, required this.type, this.signature});
  factory _ProductImage.fromJson(Map<String, dynamic> json) => _$ProductImageFromJson(json);

@override final  int id;
@override final  String imageKey;
@override final  ProductImageType type;
@override final  ProductImageSignature? signature;

/// Create a copy of ProductImage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductImageCopyWith<_ProductImage> get copyWith => __$ProductImageCopyWithImpl<_ProductImage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductImageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductImage&&(identical(other.id, id) || other.id == id)&&(identical(other.imageKey, imageKey) || other.imageKey == imageKey)&&(identical(other.type, type) || other.type == type)&&(identical(other.signature, signature) || other.signature == signature));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,imageKey,type,signature);

@override
String toString() {
  return 'ProductImage(id: $id, imageKey: $imageKey, type: $type, signature: $signature)';
}


}

/// @nodoc
abstract mixin class _$ProductImageCopyWith<$Res> implements $ProductImageCopyWith<$Res> {
  factory _$ProductImageCopyWith(_ProductImage value, $Res Function(_ProductImage) _then) = __$ProductImageCopyWithImpl;
@override @useResult
$Res call({
 int id, String imageKey, ProductImageType type, ProductImageSignature? signature
});


@override $ProductImageSignatureCopyWith<$Res>? get signature;

}
/// @nodoc
class __$ProductImageCopyWithImpl<$Res>
    implements _$ProductImageCopyWith<$Res> {
  __$ProductImageCopyWithImpl(this._self, this._then);

  final _ProductImage _self;
  final $Res Function(_ProductImage) _then;

/// Create a copy of ProductImage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? imageKey = null,Object? type = null,Object? signature = freezed,}) {
  return _then(_ProductImage(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,imageKey: null == imageKey ? _self.imageKey : imageKey // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ProductImageType,signature: freezed == signature ? _self.signature : signature // ignore: cast_nullable_to_non_nullable
as ProductImageSignature?,
  ));
}

/// Create a copy of ProductImage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductImageSignatureCopyWith<$Res>? get signature {
    if (_self.signature == null) {
    return null;
  }

  return $ProductImageSignatureCopyWith<$Res>(_self.signature!, (value) {
    return _then(_self.copyWith(signature: value));
  });
}
}


/// @nodoc
mixin _$ProductImageSignature {

 String get dimensionKey; String get valueKey;
/// Create a copy of ProductImageSignature
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductImageSignatureCopyWith<ProductImageSignature> get copyWith => _$ProductImageSignatureCopyWithImpl<ProductImageSignature>(this as ProductImageSignature, _$identity);

  /// Serializes this ProductImageSignature to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductImageSignature&&(identical(other.dimensionKey, dimensionKey) || other.dimensionKey == dimensionKey)&&(identical(other.valueKey, valueKey) || other.valueKey == valueKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dimensionKey,valueKey);

@override
String toString() {
  return 'ProductImageSignature(dimensionKey: $dimensionKey, valueKey: $valueKey)';
}


}

/// @nodoc
abstract mixin class $ProductImageSignatureCopyWith<$Res>  {
  factory $ProductImageSignatureCopyWith(ProductImageSignature value, $Res Function(ProductImageSignature) _then) = _$ProductImageSignatureCopyWithImpl;
@useResult
$Res call({
 String dimensionKey, String valueKey
});




}
/// @nodoc
class _$ProductImageSignatureCopyWithImpl<$Res>
    implements $ProductImageSignatureCopyWith<$Res> {
  _$ProductImageSignatureCopyWithImpl(this._self, this._then);

  final ProductImageSignature _self;
  final $Res Function(ProductImageSignature) _then;

/// Create a copy of ProductImageSignature
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dimensionKey = null,Object? valueKey = null,}) {
  return _then(_self.copyWith(
dimensionKey: null == dimensionKey ? _self.dimensionKey : dimensionKey // ignore: cast_nullable_to_non_nullable
as String,valueKey: null == valueKey ? _self.valueKey : valueKey // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductImageSignature].
extension ProductImageSignaturePatterns on ProductImageSignature {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductImageSignature value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductImageSignature() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductImageSignature value)  $default,){
final _that = this;
switch (_that) {
case _ProductImageSignature():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductImageSignature value)?  $default,){
final _that = this;
switch (_that) {
case _ProductImageSignature() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String dimensionKey,  String valueKey)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductImageSignature() when $default != null:
return $default(_that.dimensionKey,_that.valueKey);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String dimensionKey,  String valueKey)  $default,) {final _that = this;
switch (_that) {
case _ProductImageSignature():
return $default(_that.dimensionKey,_that.valueKey);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String dimensionKey,  String valueKey)?  $default,) {final _that = this;
switch (_that) {
case _ProductImageSignature() when $default != null:
return $default(_that.dimensionKey,_that.valueKey);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductImageSignature implements ProductImageSignature {
  const _ProductImageSignature({required this.dimensionKey, required this.valueKey});
  factory _ProductImageSignature.fromJson(Map<String, dynamic> json) => _$ProductImageSignatureFromJson(json);

@override final  String dimensionKey;
@override final  String valueKey;

/// Create a copy of ProductImageSignature
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductImageSignatureCopyWith<_ProductImageSignature> get copyWith => __$ProductImageSignatureCopyWithImpl<_ProductImageSignature>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductImageSignatureToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductImageSignature&&(identical(other.dimensionKey, dimensionKey) || other.dimensionKey == dimensionKey)&&(identical(other.valueKey, valueKey) || other.valueKey == valueKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dimensionKey,valueKey);

@override
String toString() {
  return 'ProductImageSignature(dimensionKey: $dimensionKey, valueKey: $valueKey)';
}


}

/// @nodoc
abstract mixin class _$ProductImageSignatureCopyWith<$Res> implements $ProductImageSignatureCopyWith<$Res> {
  factory _$ProductImageSignatureCopyWith(_ProductImageSignature value, $Res Function(_ProductImageSignature) _then) = __$ProductImageSignatureCopyWithImpl;
@override @useResult
$Res call({
 String dimensionKey, String valueKey
});




}
/// @nodoc
class __$ProductImageSignatureCopyWithImpl<$Res>
    implements _$ProductImageSignatureCopyWith<$Res> {
  __$ProductImageSignatureCopyWithImpl(this._self, this._then);

  final _ProductImageSignature _self;
  final $Res Function(_ProductImageSignature) _then;

/// Create a copy of ProductImageSignature
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dimensionKey = null,Object? valueKey = null,}) {
  return _then(_ProductImageSignature(
dimensionKey: null == dimensionKey ? _self.dimensionKey : dimensionKey // ignore: cast_nullable_to_non_nullable
as String,valueKey: null == valueKey ? _self.valueKey : valueKey // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ProductVariantOption {

 int get id; List<VariantOption> get options;
/// Create a copy of ProductVariantOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductVariantOptionCopyWith<ProductVariantOption> get copyWith => _$ProductVariantOptionCopyWithImpl<ProductVariantOption>(this as ProductVariantOption, _$identity);

  /// Serializes this ProductVariantOption to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductVariantOption&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.options, options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(options));

@override
String toString() {
  return 'ProductVariantOption(id: $id, options: $options)';
}


}

/// @nodoc
abstract mixin class $ProductVariantOptionCopyWith<$Res>  {
  factory $ProductVariantOptionCopyWith(ProductVariantOption value, $Res Function(ProductVariantOption) _then) = _$ProductVariantOptionCopyWithImpl;
@useResult
$Res call({
 int id, List<VariantOption> options
});




}
/// @nodoc
class _$ProductVariantOptionCopyWithImpl<$Res>
    implements $ProductVariantOptionCopyWith<$Res> {
  _$ProductVariantOptionCopyWithImpl(this._self, this._then);

  final ProductVariantOption _self;
  final $Res Function(ProductVariantOption) _then;

/// Create a copy of ProductVariantOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? options = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<VariantOption>,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductVariantOption].
extension ProductVariantOptionPatterns on ProductVariantOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductVariantOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductVariantOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductVariantOption value)  $default,){
final _that = this;
switch (_that) {
case _ProductVariantOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductVariantOption value)?  $default,){
final _that = this;
switch (_that) {
case _ProductVariantOption() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  List<VariantOption> options)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductVariantOption() when $default != null:
return $default(_that.id,_that.options);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  List<VariantOption> options)  $default,) {final _that = this;
switch (_that) {
case _ProductVariantOption():
return $default(_that.id,_that.options);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  List<VariantOption> options)?  $default,) {final _that = this;
switch (_that) {
case _ProductVariantOption() when $default != null:
return $default(_that.id,_that.options);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductVariantOption implements ProductVariantOption {
  const _ProductVariantOption({required this.id, required final  List<VariantOption> options}): _options = options;
  factory _ProductVariantOption.fromJson(Map<String, dynamic> json) => _$ProductVariantOptionFromJson(json);

@override final  int id;
 final  List<VariantOption> _options;
@override List<VariantOption> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}


/// Create a copy of ProductVariantOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductVariantOptionCopyWith<_ProductVariantOption> get copyWith => __$ProductVariantOptionCopyWithImpl<_ProductVariantOption>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductVariantOptionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductVariantOption&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._options, _options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_options));

@override
String toString() {
  return 'ProductVariantOption(id: $id, options: $options)';
}


}

/// @nodoc
abstract mixin class _$ProductVariantOptionCopyWith<$Res> implements $ProductVariantOptionCopyWith<$Res> {
  factory _$ProductVariantOptionCopyWith(_ProductVariantOption value, $Res Function(_ProductVariantOption) _then) = __$ProductVariantOptionCopyWithImpl;
@override @useResult
$Res call({
 int id, List<VariantOption> options
});




}
/// @nodoc
class __$ProductVariantOptionCopyWithImpl<$Res>
    implements _$ProductVariantOptionCopyWith<$Res> {
  __$ProductVariantOptionCopyWithImpl(this._self, this._then);

  final _ProductVariantOption _self;
  final $Res Function(_ProductVariantOption) _then;

/// Create a copy of ProductVariantOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? options = null,}) {
  return _then(_ProductVariantOption(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<VariantOption>,
  ));
}


}


/// @nodoc
mixin _$VariantOption {

 String get dimensionKey; String get valueKey;
/// Create a copy of VariantOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VariantOptionCopyWith<VariantOption> get copyWith => _$VariantOptionCopyWithImpl<VariantOption>(this as VariantOption, _$identity);

  /// Serializes this VariantOption to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VariantOption&&(identical(other.dimensionKey, dimensionKey) || other.dimensionKey == dimensionKey)&&(identical(other.valueKey, valueKey) || other.valueKey == valueKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dimensionKey,valueKey);

@override
String toString() {
  return 'VariantOption(dimensionKey: $dimensionKey, valueKey: $valueKey)';
}


}

/// @nodoc
abstract mixin class $VariantOptionCopyWith<$Res>  {
  factory $VariantOptionCopyWith(VariantOption value, $Res Function(VariantOption) _then) = _$VariantOptionCopyWithImpl;
@useResult
$Res call({
 String dimensionKey, String valueKey
});




}
/// @nodoc
class _$VariantOptionCopyWithImpl<$Res>
    implements $VariantOptionCopyWith<$Res> {
  _$VariantOptionCopyWithImpl(this._self, this._then);

  final VariantOption _self;
  final $Res Function(VariantOption) _then;

/// Create a copy of VariantOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dimensionKey = null,Object? valueKey = null,}) {
  return _then(_self.copyWith(
dimensionKey: null == dimensionKey ? _self.dimensionKey : dimensionKey // ignore: cast_nullable_to_non_nullable
as String,valueKey: null == valueKey ? _self.valueKey : valueKey // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [VariantOption].
extension VariantOptionPatterns on VariantOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VariantOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VariantOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VariantOption value)  $default,){
final _that = this;
switch (_that) {
case _VariantOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VariantOption value)?  $default,){
final _that = this;
switch (_that) {
case _VariantOption() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String dimensionKey,  String valueKey)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VariantOption() when $default != null:
return $default(_that.dimensionKey,_that.valueKey);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String dimensionKey,  String valueKey)  $default,) {final _that = this;
switch (_that) {
case _VariantOption():
return $default(_that.dimensionKey,_that.valueKey);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String dimensionKey,  String valueKey)?  $default,) {final _that = this;
switch (_that) {
case _VariantOption() when $default != null:
return $default(_that.dimensionKey,_that.valueKey);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VariantOption implements VariantOption {
  const _VariantOption({required this.dimensionKey, required this.valueKey});
  factory _VariantOption.fromJson(Map<String, dynamic> json) => _$VariantOptionFromJson(json);

@override final  String dimensionKey;
@override final  String valueKey;

/// Create a copy of VariantOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VariantOptionCopyWith<_VariantOption> get copyWith => __$VariantOptionCopyWithImpl<_VariantOption>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VariantOptionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VariantOption&&(identical(other.dimensionKey, dimensionKey) || other.dimensionKey == dimensionKey)&&(identical(other.valueKey, valueKey) || other.valueKey == valueKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dimensionKey,valueKey);

@override
String toString() {
  return 'VariantOption(dimensionKey: $dimensionKey, valueKey: $valueKey)';
}


}

/// @nodoc
abstract mixin class _$VariantOptionCopyWith<$Res> implements $VariantOptionCopyWith<$Res> {
  factory _$VariantOptionCopyWith(_VariantOption value, $Res Function(_VariantOption) _then) = __$VariantOptionCopyWithImpl;
@override @useResult
$Res call({
 String dimensionKey, String valueKey
});




}
/// @nodoc
class __$VariantOptionCopyWithImpl<$Res>
    implements _$VariantOptionCopyWith<$Res> {
  __$VariantOptionCopyWithImpl(this._self, this._then);

  final _VariantOption _self;
  final $Res Function(_VariantOption) _then;

/// Create a copy of VariantOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dimensionKey = null,Object? valueKey = null,}) {
  return _then(_VariantOption(
dimensionKey: null == dimensionKey ? _self.dimensionKey : dimensionKey // ignore: cast_nullable_to_non_nullable
as String,valueKey: null == valueKey ? _self.valueKey : valueKey // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ProductCategory {

 String get name; String get slugPath;
/// Create a copy of ProductCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCategoryCopyWith<ProductCategory> get copyWith => _$ProductCategoryCopyWithImpl<ProductCategory>(this as ProductCategory, _$identity);

  /// Serializes this ProductCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductCategory&&(identical(other.name, name) || other.name == name)&&(identical(other.slugPath, slugPath) || other.slugPath == slugPath));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,slugPath);

@override
String toString() {
  return 'ProductCategory(name: $name, slugPath: $slugPath)';
}


}

/// @nodoc
abstract mixin class $ProductCategoryCopyWith<$Res>  {
  factory $ProductCategoryCopyWith(ProductCategory value, $Res Function(ProductCategory) _then) = _$ProductCategoryCopyWithImpl;
@useResult
$Res call({
 String name, String slugPath
});




}
/// @nodoc
class _$ProductCategoryCopyWithImpl<$Res>
    implements $ProductCategoryCopyWith<$Res> {
  _$ProductCategoryCopyWithImpl(this._self, this._then);

  final ProductCategory _self;
  final $Res Function(ProductCategory) _then;

/// Create a copy of ProductCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? slugPath = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slugPath: null == slugPath ? _self.slugPath : slugPath // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductCategory].
extension ProductCategoryPatterns on ProductCategory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductCategory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductCategory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductCategory value)  $default,){
final _that = this;
switch (_that) {
case _ProductCategory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductCategory value)?  $default,){
final _that = this;
switch (_that) {
case _ProductCategory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String slugPath)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductCategory() when $default != null:
return $default(_that.name,_that.slugPath);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String slugPath)  $default,) {final _that = this;
switch (_that) {
case _ProductCategory():
return $default(_that.name,_that.slugPath);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String slugPath)?  $default,) {final _that = this;
switch (_that) {
case _ProductCategory() when $default != null:
return $default(_that.name,_that.slugPath);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductCategory implements ProductCategory {
  const _ProductCategory({required this.name, required this.slugPath});
  factory _ProductCategory.fromJson(Map<String, dynamic> json) => _$ProductCategoryFromJson(json);

@override final  String name;
@override final  String slugPath;

/// Create a copy of ProductCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductCategoryCopyWith<_ProductCategory> get copyWith => __$ProductCategoryCopyWithImpl<_ProductCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductCategory&&(identical(other.name, name) || other.name == name)&&(identical(other.slugPath, slugPath) || other.slugPath == slugPath));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,slugPath);

@override
String toString() {
  return 'ProductCategory(name: $name, slugPath: $slugPath)';
}


}

/// @nodoc
abstract mixin class _$ProductCategoryCopyWith<$Res> implements $ProductCategoryCopyWith<$Res> {
  factory _$ProductCategoryCopyWith(_ProductCategory value, $Res Function(_ProductCategory) _then) = __$ProductCategoryCopyWithImpl;
@override @useResult
$Res call({
 String name, String slugPath
});




}
/// @nodoc
class __$ProductCategoryCopyWithImpl<$Res>
    implements _$ProductCategoryCopyWith<$Res> {
  __$ProductCategoryCopyWithImpl(this._self, this._then);

  final _ProductCategory _self;
  final $Res Function(_ProductCategory) _then;

/// Create a copy of ProductCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? slugPath = null,}) {
  return _then(_ProductCategory(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slugPath: null == slugPath ? _self.slugPath : slugPath // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ProductDimensionValue {

 String get key; String get label; String? get hexColor;
/// Create a copy of ProductDimensionValue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductDimensionValueCopyWith<ProductDimensionValue> get copyWith => _$ProductDimensionValueCopyWithImpl<ProductDimensionValue>(this as ProductDimensionValue, _$identity);

  /// Serializes this ProductDimensionValue to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDimensionValue&&(identical(other.key, key) || other.key == key)&&(identical(other.label, label) || other.label == label)&&(identical(other.hexColor, hexColor) || other.hexColor == hexColor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,label,hexColor);

@override
String toString() {
  return 'ProductDimensionValue(key: $key, label: $label, hexColor: $hexColor)';
}


}

/// @nodoc
abstract mixin class $ProductDimensionValueCopyWith<$Res>  {
  factory $ProductDimensionValueCopyWith(ProductDimensionValue value, $Res Function(ProductDimensionValue) _then) = _$ProductDimensionValueCopyWithImpl;
@useResult
$Res call({
 String key, String label, String? hexColor
});




}
/// @nodoc
class _$ProductDimensionValueCopyWithImpl<$Res>
    implements $ProductDimensionValueCopyWith<$Res> {
  _$ProductDimensionValueCopyWithImpl(this._self, this._then);

  final ProductDimensionValue _self;
  final $Res Function(ProductDimensionValue) _then;

/// Create a copy of ProductDimensionValue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? key = null,Object? label = null,Object? hexColor = freezed,}) {
  return _then(_self.copyWith(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,hexColor: freezed == hexColor ? _self.hexColor : hexColor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductDimensionValue].
extension ProductDimensionValuePatterns on ProductDimensionValue {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductDimensionValue value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductDimensionValue() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductDimensionValue value)  $default,){
final _that = this;
switch (_that) {
case _ProductDimensionValue():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductDimensionValue value)?  $default,){
final _that = this;
switch (_that) {
case _ProductDimensionValue() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String key,  String label,  String? hexColor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductDimensionValue() when $default != null:
return $default(_that.key,_that.label,_that.hexColor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String key,  String label,  String? hexColor)  $default,) {final _that = this;
switch (_that) {
case _ProductDimensionValue():
return $default(_that.key,_that.label,_that.hexColor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String key,  String label,  String? hexColor)?  $default,) {final _that = this;
switch (_that) {
case _ProductDimensionValue() when $default != null:
return $default(_that.key,_that.label,_that.hexColor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductDimensionValue implements ProductDimensionValue {
  const _ProductDimensionValue({required this.key, required this.label, required this.hexColor});
  factory _ProductDimensionValue.fromJson(Map<String, dynamic> json) => _$ProductDimensionValueFromJson(json);

@override final  String key;
@override final  String label;
@override final  String? hexColor;

/// Create a copy of ProductDimensionValue
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductDimensionValueCopyWith<_ProductDimensionValue> get copyWith => __$ProductDimensionValueCopyWithImpl<_ProductDimensionValue>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductDimensionValueToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductDimensionValue&&(identical(other.key, key) || other.key == key)&&(identical(other.label, label) || other.label == label)&&(identical(other.hexColor, hexColor) || other.hexColor == hexColor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,label,hexColor);

@override
String toString() {
  return 'ProductDimensionValue(key: $key, label: $label, hexColor: $hexColor)';
}


}

/// @nodoc
abstract mixin class _$ProductDimensionValueCopyWith<$Res> implements $ProductDimensionValueCopyWith<$Res> {
  factory _$ProductDimensionValueCopyWith(_ProductDimensionValue value, $Res Function(_ProductDimensionValue) _then) = __$ProductDimensionValueCopyWithImpl;
@override @useResult
$Res call({
 String key, String label, String? hexColor
});




}
/// @nodoc
class __$ProductDimensionValueCopyWithImpl<$Res>
    implements _$ProductDimensionValueCopyWith<$Res> {
  __$ProductDimensionValueCopyWithImpl(this._self, this._then);

  final _ProductDimensionValue _self;
  final $Res Function(_ProductDimensionValue) _then;

/// Create a copy of ProductDimensionValue
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? key = null,Object? label = null,Object? hexColor = freezed,}) {
  return _then(_ProductDimensionValue(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,hexColor: freezed == hexColor ? _self.hexColor : hexColor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ProductDimension {

 String get key; String get label; List<ProductDimensionValue> get values;
/// Create a copy of ProductDimension
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductDimensionCopyWith<ProductDimension> get copyWith => _$ProductDimensionCopyWithImpl<ProductDimension>(this as ProductDimension, _$identity);

  /// Serializes this ProductDimension to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDimension&&(identical(other.key, key) || other.key == key)&&(identical(other.label, label) || other.label == label)&&const DeepCollectionEquality().equals(other.values, values));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,label,const DeepCollectionEquality().hash(values));

@override
String toString() {
  return 'ProductDimension(key: $key, label: $label, values: $values)';
}


}

/// @nodoc
abstract mixin class $ProductDimensionCopyWith<$Res>  {
  factory $ProductDimensionCopyWith(ProductDimension value, $Res Function(ProductDimension) _then) = _$ProductDimensionCopyWithImpl;
@useResult
$Res call({
 String key, String label, List<ProductDimensionValue> values
});




}
/// @nodoc
class _$ProductDimensionCopyWithImpl<$Res>
    implements $ProductDimensionCopyWith<$Res> {
  _$ProductDimensionCopyWithImpl(this._self, this._then);

  final ProductDimension _self;
  final $Res Function(ProductDimension) _then;

/// Create a copy of ProductDimension
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? key = null,Object? label = null,Object? values = null,}) {
  return _then(_self.copyWith(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,values: null == values ? _self.values : values // ignore: cast_nullable_to_non_nullable
as List<ProductDimensionValue>,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductDimension].
extension ProductDimensionPatterns on ProductDimension {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductDimension value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductDimension() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductDimension value)  $default,){
final _that = this;
switch (_that) {
case _ProductDimension():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductDimension value)?  $default,){
final _that = this;
switch (_that) {
case _ProductDimension() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String key,  String label,  List<ProductDimensionValue> values)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductDimension() when $default != null:
return $default(_that.key,_that.label,_that.values);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String key,  String label,  List<ProductDimensionValue> values)  $default,) {final _that = this;
switch (_that) {
case _ProductDimension():
return $default(_that.key,_that.label,_that.values);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String key,  String label,  List<ProductDimensionValue> values)?  $default,) {final _that = this;
switch (_that) {
case _ProductDimension() when $default != null:
return $default(_that.key,_that.label,_that.values);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductDimension implements ProductDimension {
  const _ProductDimension({required this.key, required this.label, required final  List<ProductDimensionValue> values}): _values = values;
  factory _ProductDimension.fromJson(Map<String, dynamic> json) => _$ProductDimensionFromJson(json);

@override final  String key;
@override final  String label;
 final  List<ProductDimensionValue> _values;
@override List<ProductDimensionValue> get values {
  if (_values is EqualUnmodifiableListView) return _values;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_values);
}


/// Create a copy of ProductDimension
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductDimensionCopyWith<_ProductDimension> get copyWith => __$ProductDimensionCopyWithImpl<_ProductDimension>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductDimensionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductDimension&&(identical(other.key, key) || other.key == key)&&(identical(other.label, label) || other.label == label)&&const DeepCollectionEquality().equals(other._values, _values));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,label,const DeepCollectionEquality().hash(_values));

@override
String toString() {
  return 'ProductDimension(key: $key, label: $label, values: $values)';
}


}

/// @nodoc
abstract mixin class _$ProductDimensionCopyWith<$Res> implements $ProductDimensionCopyWith<$Res> {
  factory _$ProductDimensionCopyWith(_ProductDimension value, $Res Function(_ProductDimension) _then) = __$ProductDimensionCopyWithImpl;
@override @useResult
$Res call({
 String key, String label, List<ProductDimensionValue> values
});




}
/// @nodoc
class __$ProductDimensionCopyWithImpl<$Res>
    implements _$ProductDimensionCopyWith<$Res> {
  __$ProductDimensionCopyWithImpl(this._self, this._then);

  final _ProductDimension _self;
  final $Res Function(_ProductDimension) _then;

/// Create a copy of ProductDimension
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? key = null,Object? label = null,Object? values = null,}) {
  return _then(_ProductDimension(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,values: null == values ? _self._values : values // ignore: cast_nullable_to_non_nullable
as List<ProductDimensionValue>,
  ));
}


}

// dart format on
