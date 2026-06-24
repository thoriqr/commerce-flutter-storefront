// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_listing_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductListingState {

 List<ProductSummary> get products; CursorMeta get meta; ProductListingQueryParams get params; ProductSortOption get selectedSort; int get activeFilterCount; bool get isLoadingMore;
/// Create a copy of ProductListingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductListingStateCopyWith<ProductListingState> get copyWith => _$ProductListingStateCopyWithImpl<ProductListingState>(this as ProductListingState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductListingState&&const DeepCollectionEquality().equals(other.products, products)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.params, params) || other.params == params)&&(identical(other.selectedSort, selectedSort) || other.selectedSort == selectedSort)&&(identical(other.activeFilterCount, activeFilterCount) || other.activeFilterCount == activeFilterCount)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(products),meta,params,selectedSort,activeFilterCount,isLoadingMore);

@override
String toString() {
  return 'ProductListingState(products: $products, meta: $meta, params: $params, selectedSort: $selectedSort, activeFilterCount: $activeFilterCount, isLoadingMore: $isLoadingMore)';
}


}

/// @nodoc
abstract mixin class $ProductListingStateCopyWith<$Res>  {
  factory $ProductListingStateCopyWith(ProductListingState value, $Res Function(ProductListingState) _then) = _$ProductListingStateCopyWithImpl;
@useResult
$Res call({
 List<ProductSummary> products, CursorMeta meta, ProductListingQueryParams params, ProductSortOption selectedSort, int activeFilterCount, bool isLoadingMore
});


$CursorMetaCopyWith<$Res> get meta;$ProductListingQueryParamsCopyWith<$Res> get params;

}
/// @nodoc
class _$ProductListingStateCopyWithImpl<$Res>
    implements $ProductListingStateCopyWith<$Res> {
  _$ProductListingStateCopyWithImpl(this._self, this._then);

  final ProductListingState _self;
  final $Res Function(ProductListingState) _then;

/// Create a copy of ProductListingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? products = null,Object? meta = null,Object? params = null,Object? selectedSort = null,Object? activeFilterCount = null,Object? isLoadingMore = null,}) {
  return _then(_self.copyWith(
products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<ProductSummary>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as CursorMeta,params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as ProductListingQueryParams,selectedSort: null == selectedSort ? _self.selectedSort : selectedSort // ignore: cast_nullable_to_non_nullable
as ProductSortOption,activeFilterCount: null == activeFilterCount ? _self.activeFilterCount : activeFilterCount // ignore: cast_nullable_to_non_nullable
as int,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of ProductListingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CursorMetaCopyWith<$Res> get meta {
  
  return $CursorMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}/// Create a copy of ProductListingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductListingQueryParamsCopyWith<$Res> get params {
  
  return $ProductListingQueryParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductListingState].
extension ProductListingStatePatterns on ProductListingState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductListingState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductListingState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductListingState value)  $default,){
final _that = this;
switch (_that) {
case _ProductListingState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductListingState value)?  $default,){
final _that = this;
switch (_that) {
case _ProductListingState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ProductSummary> products,  CursorMeta meta,  ProductListingQueryParams params,  ProductSortOption selectedSort,  int activeFilterCount,  bool isLoadingMore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductListingState() when $default != null:
return $default(_that.products,_that.meta,_that.params,_that.selectedSort,_that.activeFilterCount,_that.isLoadingMore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ProductSummary> products,  CursorMeta meta,  ProductListingQueryParams params,  ProductSortOption selectedSort,  int activeFilterCount,  bool isLoadingMore)  $default,) {final _that = this;
switch (_that) {
case _ProductListingState():
return $default(_that.products,_that.meta,_that.params,_that.selectedSort,_that.activeFilterCount,_that.isLoadingMore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ProductSummary> products,  CursorMeta meta,  ProductListingQueryParams params,  ProductSortOption selectedSort,  int activeFilterCount,  bool isLoadingMore)?  $default,) {final _that = this;
switch (_that) {
case _ProductListingState() when $default != null:
return $default(_that.products,_that.meta,_that.params,_that.selectedSort,_that.activeFilterCount,_that.isLoadingMore);case _:
  return null;

}
}

}

/// @nodoc


class _ProductListingState implements ProductListingState {
  const _ProductListingState({required final  List<ProductSummary> products, required this.meta, required this.params, required this.selectedSort, this.activeFilterCount = 0, this.isLoadingMore = false}): _products = products;
  

 final  List<ProductSummary> _products;
@override List<ProductSummary> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

@override final  CursorMeta meta;
@override final  ProductListingQueryParams params;
@override final  ProductSortOption selectedSort;
@override@JsonKey() final  int activeFilterCount;
@override@JsonKey() final  bool isLoadingMore;

/// Create a copy of ProductListingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductListingStateCopyWith<_ProductListingState> get copyWith => __$ProductListingStateCopyWithImpl<_ProductListingState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductListingState&&const DeepCollectionEquality().equals(other._products, _products)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.params, params) || other.params == params)&&(identical(other.selectedSort, selectedSort) || other.selectedSort == selectedSort)&&(identical(other.activeFilterCount, activeFilterCount) || other.activeFilterCount == activeFilterCount)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_products),meta,params,selectedSort,activeFilterCount,isLoadingMore);

@override
String toString() {
  return 'ProductListingState(products: $products, meta: $meta, params: $params, selectedSort: $selectedSort, activeFilterCount: $activeFilterCount, isLoadingMore: $isLoadingMore)';
}


}

/// @nodoc
abstract mixin class _$ProductListingStateCopyWith<$Res> implements $ProductListingStateCopyWith<$Res> {
  factory _$ProductListingStateCopyWith(_ProductListingState value, $Res Function(_ProductListingState) _then) = __$ProductListingStateCopyWithImpl;
@override @useResult
$Res call({
 List<ProductSummary> products, CursorMeta meta, ProductListingQueryParams params, ProductSortOption selectedSort, int activeFilterCount, bool isLoadingMore
});


@override $CursorMetaCopyWith<$Res> get meta;@override $ProductListingQueryParamsCopyWith<$Res> get params;

}
/// @nodoc
class __$ProductListingStateCopyWithImpl<$Res>
    implements _$ProductListingStateCopyWith<$Res> {
  __$ProductListingStateCopyWithImpl(this._self, this._then);

  final _ProductListingState _self;
  final $Res Function(_ProductListingState) _then;

/// Create a copy of ProductListingState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? products = null,Object? meta = null,Object? params = null,Object? selectedSort = null,Object? activeFilterCount = null,Object? isLoadingMore = null,}) {
  return _then(_ProductListingState(
products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ProductSummary>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as CursorMeta,params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as ProductListingQueryParams,selectedSort: null == selectedSort ? _self.selectedSort : selectedSort // ignore: cast_nullable_to_non_nullable
as ProductSortOption,activeFilterCount: null == activeFilterCount ? _self.activeFilterCount : activeFilterCount // ignore: cast_nullable_to_non_nullable
as int,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ProductListingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CursorMetaCopyWith<$Res> get meta {
  
  return $CursorMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}/// Create a copy of ProductListingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductListingQueryParamsCopyWith<$Res> get params {
  
  return $ProductListingQueryParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

// dart format on
