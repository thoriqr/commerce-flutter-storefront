// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_variant_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductVariantDetail {

 int get id; int get imageKey; int get slug; String? get sku; String get currency; int get weight; String get weightUnit; bool get isAvailable; ProductVariantDetailWarning? get warning;
/// Create a copy of ProductVariantDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductVariantDetailCopyWith<ProductVariantDetail> get copyWith => _$ProductVariantDetailCopyWithImpl<ProductVariantDetail>(this as ProductVariantDetail, _$identity);

  /// Serializes this ProductVariantDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductVariantDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.imageKey, imageKey) || other.imageKey == imageKey)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.weightUnit, weightUnit) || other.weightUnit == weightUnit)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable)&&(identical(other.warning, warning) || other.warning == warning));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,imageKey,slug,sku,currency,weight,weightUnit,isAvailable,warning);

@override
String toString() {
  return 'ProductVariantDetail(id: $id, imageKey: $imageKey, slug: $slug, sku: $sku, currency: $currency, weight: $weight, weightUnit: $weightUnit, isAvailable: $isAvailable, warning: $warning)';
}


}

/// @nodoc
abstract mixin class $ProductVariantDetailCopyWith<$Res>  {
  factory $ProductVariantDetailCopyWith(ProductVariantDetail value, $Res Function(ProductVariantDetail) _then) = _$ProductVariantDetailCopyWithImpl;
@useResult
$Res call({
 int id, int imageKey, int slug, String? sku, String currency, int weight, String weightUnit, bool isAvailable, ProductVariantDetailWarning? warning
});




}
/// @nodoc
class _$ProductVariantDetailCopyWithImpl<$Res>
    implements $ProductVariantDetailCopyWith<$Res> {
  _$ProductVariantDetailCopyWithImpl(this._self, this._then);

  final ProductVariantDetail _self;
  final $Res Function(ProductVariantDetail) _then;

/// Create a copy of ProductVariantDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? imageKey = null,Object? slug = null,Object? sku = freezed,Object? currency = null,Object? weight = null,Object? weightUnit = null,Object? isAvailable = null,Object? warning = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,imageKey: null == imageKey ? _self.imageKey : imageKey // ignore: cast_nullable_to_non_nullable
as int,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as int,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,weightUnit: null == weightUnit ? _self.weightUnit : weightUnit // ignore: cast_nullable_to_non_nullable
as String,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,warning: freezed == warning ? _self.warning : warning // ignore: cast_nullable_to_non_nullable
as ProductVariantDetailWarning?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductVariantDetail].
extension ProductVariantDetailPatterns on ProductVariantDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductVariantDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductVariantDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductVariantDetail value)  $default,){
final _that = this;
switch (_that) {
case _ProductVariantDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductVariantDetail value)?  $default,){
final _that = this;
switch (_that) {
case _ProductVariantDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int imageKey,  int slug,  String? sku,  String currency,  int weight,  String weightUnit,  bool isAvailable,  ProductVariantDetailWarning? warning)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductVariantDetail() when $default != null:
return $default(_that.id,_that.imageKey,_that.slug,_that.sku,_that.currency,_that.weight,_that.weightUnit,_that.isAvailable,_that.warning);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int imageKey,  int slug,  String? sku,  String currency,  int weight,  String weightUnit,  bool isAvailable,  ProductVariantDetailWarning? warning)  $default,) {final _that = this;
switch (_that) {
case _ProductVariantDetail():
return $default(_that.id,_that.imageKey,_that.slug,_that.sku,_that.currency,_that.weight,_that.weightUnit,_that.isAvailable,_that.warning);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int imageKey,  int slug,  String? sku,  String currency,  int weight,  String weightUnit,  bool isAvailable,  ProductVariantDetailWarning? warning)?  $default,) {final _that = this;
switch (_that) {
case _ProductVariantDetail() when $default != null:
return $default(_that.id,_that.imageKey,_that.slug,_that.sku,_that.currency,_that.weight,_that.weightUnit,_that.isAvailable,_that.warning);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductVariantDetail implements ProductVariantDetail {
  const _ProductVariantDetail({required this.id, required this.imageKey, required this.slug, required this.sku, required this.currency, required this.weight, required this.weightUnit, required this.isAvailable, required this.warning});
  factory _ProductVariantDetail.fromJson(Map<String, dynamic> json) => _$ProductVariantDetailFromJson(json);

@override final  int id;
@override final  int imageKey;
@override final  int slug;
@override final  String? sku;
@override final  String currency;
@override final  int weight;
@override final  String weightUnit;
@override final  bool isAvailable;
@override final  ProductVariantDetailWarning? warning;

/// Create a copy of ProductVariantDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductVariantDetailCopyWith<_ProductVariantDetail> get copyWith => __$ProductVariantDetailCopyWithImpl<_ProductVariantDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductVariantDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductVariantDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.imageKey, imageKey) || other.imageKey == imageKey)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.weightUnit, weightUnit) || other.weightUnit == weightUnit)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable)&&(identical(other.warning, warning) || other.warning == warning));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,imageKey,slug,sku,currency,weight,weightUnit,isAvailable,warning);

@override
String toString() {
  return 'ProductVariantDetail(id: $id, imageKey: $imageKey, slug: $slug, sku: $sku, currency: $currency, weight: $weight, weightUnit: $weightUnit, isAvailable: $isAvailable, warning: $warning)';
}


}

/// @nodoc
abstract mixin class _$ProductVariantDetailCopyWith<$Res> implements $ProductVariantDetailCopyWith<$Res> {
  factory _$ProductVariantDetailCopyWith(_ProductVariantDetail value, $Res Function(_ProductVariantDetail) _then) = __$ProductVariantDetailCopyWithImpl;
@override @useResult
$Res call({
 int id, int imageKey, int slug, String? sku, String currency, int weight, String weightUnit, bool isAvailable, ProductVariantDetailWarning? warning
});




}
/// @nodoc
class __$ProductVariantDetailCopyWithImpl<$Res>
    implements _$ProductVariantDetailCopyWith<$Res> {
  __$ProductVariantDetailCopyWithImpl(this._self, this._then);

  final _ProductVariantDetail _self;
  final $Res Function(_ProductVariantDetail) _then;

/// Create a copy of ProductVariantDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? imageKey = null,Object? slug = null,Object? sku = freezed,Object? currency = null,Object? weight = null,Object? weightUnit = null,Object? isAvailable = null,Object? warning = freezed,}) {
  return _then(_ProductVariantDetail(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,imageKey: null == imageKey ? _self.imageKey : imageKey // ignore: cast_nullable_to_non_nullable
as int,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as int,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,weightUnit: null == weightUnit ? _self.weightUnit : weightUnit // ignore: cast_nullable_to_non_nullable
as String,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,warning: freezed == warning ? _self.warning : warning // ignore: cast_nullable_to_non_nullable
as ProductVariantDetailWarning?,
  ));
}


}

// dart format on
