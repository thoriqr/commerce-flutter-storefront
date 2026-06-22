// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_listing_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductListingResult {

 List<ProductSummary> get products; CursorMeta get meta;
/// Create a copy of ProductListingResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductListingResultCopyWith<ProductListingResult> get copyWith => _$ProductListingResultCopyWithImpl<ProductListingResult>(this as ProductListingResult, _$identity);

  /// Serializes this ProductListingResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductListingResult&&const DeepCollectionEquality().equals(other.products, products)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(products),meta);

@override
String toString() {
  return 'ProductListingResult(products: $products, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $ProductListingResultCopyWith<$Res>  {
  factory $ProductListingResultCopyWith(ProductListingResult value, $Res Function(ProductListingResult) _then) = _$ProductListingResultCopyWithImpl;
@useResult
$Res call({
 List<ProductSummary> products, CursorMeta meta
});


$CursorMetaCopyWith<$Res> get meta;

}
/// @nodoc
class _$ProductListingResultCopyWithImpl<$Res>
    implements $ProductListingResultCopyWith<$Res> {
  _$ProductListingResultCopyWithImpl(this._self, this._then);

  final ProductListingResult _self;
  final $Res Function(ProductListingResult) _then;

/// Create a copy of ProductListingResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? products = null,Object? meta = null,}) {
  return _then(_self.copyWith(
products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<ProductSummary>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as CursorMeta,
  ));
}
/// Create a copy of ProductListingResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CursorMetaCopyWith<$Res> get meta {
  
  return $CursorMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductListingResult].
extension ProductListingResultPatterns on ProductListingResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductListingResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductListingResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductListingResult value)  $default,){
final _that = this;
switch (_that) {
case _ProductListingResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductListingResult value)?  $default,){
final _that = this;
switch (_that) {
case _ProductListingResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ProductSummary> products,  CursorMeta meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductListingResult() when $default != null:
return $default(_that.products,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ProductSummary> products,  CursorMeta meta)  $default,) {final _that = this;
switch (_that) {
case _ProductListingResult():
return $default(_that.products,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ProductSummary> products,  CursorMeta meta)?  $default,) {final _that = this;
switch (_that) {
case _ProductListingResult() when $default != null:
return $default(_that.products,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductListingResult implements ProductListingResult {
  const _ProductListingResult({required final  List<ProductSummary> products, required this.meta}): _products = products;
  factory _ProductListingResult.fromJson(Map<String, dynamic> json) => _$ProductListingResultFromJson(json);

 final  List<ProductSummary> _products;
@override List<ProductSummary> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

@override final  CursorMeta meta;

/// Create a copy of ProductListingResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductListingResultCopyWith<_ProductListingResult> get copyWith => __$ProductListingResultCopyWithImpl<_ProductListingResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductListingResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductListingResult&&const DeepCollectionEquality().equals(other._products, _products)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_products),meta);

@override
String toString() {
  return 'ProductListingResult(products: $products, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$ProductListingResultCopyWith<$Res> implements $ProductListingResultCopyWith<$Res> {
  factory _$ProductListingResultCopyWith(_ProductListingResult value, $Res Function(_ProductListingResult) _then) = __$ProductListingResultCopyWithImpl;
@override @useResult
$Res call({
 List<ProductSummary> products, CursorMeta meta
});


@override $CursorMetaCopyWith<$Res> get meta;

}
/// @nodoc
class __$ProductListingResultCopyWithImpl<$Res>
    implements _$ProductListingResultCopyWith<$Res> {
  __$ProductListingResultCopyWithImpl(this._self, this._then);

  final _ProductListingResult _self;
  final $Res Function(_ProductListingResult) _then;

/// Create a copy of ProductListingResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? products = null,Object? meta = null,}) {
  return _then(_ProductListingResult(
products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ProductSummary>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as CursorMeta,
  ));
}

/// Create a copy of ProductListingResult
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
