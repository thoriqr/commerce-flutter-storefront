// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_listing_query_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductListingQueryParams {

 String? get cursor; int get limit; int? get priceMin; int? get priceMax; ProductSortBy get sortBy; SortDirection get sortDir; Map<String, List<String>> get filters;
/// Create a copy of ProductListingQueryParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductListingQueryParamsCopyWith<ProductListingQueryParams> get copyWith => _$ProductListingQueryParamsCopyWithImpl<ProductListingQueryParams>(this as ProductListingQueryParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductListingQueryParams&&(identical(other.cursor, cursor) || other.cursor == cursor)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.priceMin, priceMin) || other.priceMin == priceMin)&&(identical(other.priceMax, priceMax) || other.priceMax == priceMax)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.sortDir, sortDir) || other.sortDir == sortDir)&&const DeepCollectionEquality().equals(other.filters, filters));
}


@override
int get hashCode => Object.hash(runtimeType,cursor,limit,priceMin,priceMax,sortBy,sortDir,const DeepCollectionEquality().hash(filters));

@override
String toString() {
  return 'ProductListingQueryParams(cursor: $cursor, limit: $limit, priceMin: $priceMin, priceMax: $priceMax, sortBy: $sortBy, sortDir: $sortDir, filters: $filters)';
}


}

/// @nodoc
abstract mixin class $ProductListingQueryParamsCopyWith<$Res>  {
  factory $ProductListingQueryParamsCopyWith(ProductListingQueryParams value, $Res Function(ProductListingQueryParams) _then) = _$ProductListingQueryParamsCopyWithImpl;
@useResult
$Res call({
 String? cursor, int limit, int? priceMin, int? priceMax, ProductSortBy sortBy, SortDirection sortDir, Map<String, List<String>> filters
});




}
/// @nodoc
class _$ProductListingQueryParamsCopyWithImpl<$Res>
    implements $ProductListingQueryParamsCopyWith<$Res> {
  _$ProductListingQueryParamsCopyWithImpl(this._self, this._then);

  final ProductListingQueryParams _self;
  final $Res Function(ProductListingQueryParams) _then;

/// Create a copy of ProductListingQueryParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cursor = freezed,Object? limit = null,Object? priceMin = freezed,Object? priceMax = freezed,Object? sortBy = null,Object? sortDir = null,Object? filters = null,}) {
  return _then(_self.copyWith(
cursor: freezed == cursor ? _self.cursor : cursor // ignore: cast_nullable_to_non_nullable
as String?,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,priceMin: freezed == priceMin ? _self.priceMin : priceMin // ignore: cast_nullable_to_non_nullable
as int?,priceMax: freezed == priceMax ? _self.priceMax : priceMax // ignore: cast_nullable_to_non_nullable
as int?,sortBy: null == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as ProductSortBy,sortDir: null == sortDir ? _self.sortDir : sortDir // ignore: cast_nullable_to_non_nullable
as SortDirection,filters: null == filters ? _self.filters : filters // ignore: cast_nullable_to_non_nullable
as Map<String, List<String>>,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductListingQueryParams].
extension ProductListingQueryParamsPatterns on ProductListingQueryParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductListingQueryParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductListingQueryParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductListingQueryParams value)  $default,){
final _that = this;
switch (_that) {
case _ProductListingQueryParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductListingQueryParams value)?  $default,){
final _that = this;
switch (_that) {
case _ProductListingQueryParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? cursor,  int limit,  int? priceMin,  int? priceMax,  ProductSortBy sortBy,  SortDirection sortDir,  Map<String, List<String>> filters)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductListingQueryParams() when $default != null:
return $default(_that.cursor,_that.limit,_that.priceMin,_that.priceMax,_that.sortBy,_that.sortDir,_that.filters);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? cursor,  int limit,  int? priceMin,  int? priceMax,  ProductSortBy sortBy,  SortDirection sortDir,  Map<String, List<String>> filters)  $default,) {final _that = this;
switch (_that) {
case _ProductListingQueryParams():
return $default(_that.cursor,_that.limit,_that.priceMin,_that.priceMax,_that.sortBy,_that.sortDir,_that.filters);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? cursor,  int limit,  int? priceMin,  int? priceMax,  ProductSortBy sortBy,  SortDirection sortDir,  Map<String, List<String>> filters)?  $default,) {final _that = this;
switch (_that) {
case _ProductListingQueryParams() when $default != null:
return $default(_that.cursor,_that.limit,_that.priceMin,_that.priceMax,_that.sortBy,_that.sortDir,_that.filters);case _:
  return null;

}
}

}

/// @nodoc


class _ProductListingQueryParams implements ProductListingQueryParams {
  const _ProductListingQueryParams({this.cursor, this.limit = 12, this.priceMin, this.priceMax, this.sortBy = ProductSortBy.createdAt, this.sortDir = SortDirection.desc, final  Map<String, List<String>> filters = const {}}): _filters = filters;
  

@override final  String? cursor;
@override@JsonKey() final  int limit;
@override final  int? priceMin;
@override final  int? priceMax;
@override@JsonKey() final  ProductSortBy sortBy;
@override@JsonKey() final  SortDirection sortDir;
 final  Map<String, List<String>> _filters;
@override@JsonKey() Map<String, List<String>> get filters {
  if (_filters is EqualUnmodifiableMapView) return _filters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_filters);
}


/// Create a copy of ProductListingQueryParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductListingQueryParamsCopyWith<_ProductListingQueryParams> get copyWith => __$ProductListingQueryParamsCopyWithImpl<_ProductListingQueryParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductListingQueryParams&&(identical(other.cursor, cursor) || other.cursor == cursor)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.priceMin, priceMin) || other.priceMin == priceMin)&&(identical(other.priceMax, priceMax) || other.priceMax == priceMax)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.sortDir, sortDir) || other.sortDir == sortDir)&&const DeepCollectionEquality().equals(other._filters, _filters));
}


@override
int get hashCode => Object.hash(runtimeType,cursor,limit,priceMin,priceMax,sortBy,sortDir,const DeepCollectionEquality().hash(_filters));

@override
String toString() {
  return 'ProductListingQueryParams(cursor: $cursor, limit: $limit, priceMin: $priceMin, priceMax: $priceMax, sortBy: $sortBy, sortDir: $sortDir, filters: $filters)';
}


}

/// @nodoc
abstract mixin class _$ProductListingQueryParamsCopyWith<$Res> implements $ProductListingQueryParamsCopyWith<$Res> {
  factory _$ProductListingQueryParamsCopyWith(_ProductListingQueryParams value, $Res Function(_ProductListingQueryParams) _then) = __$ProductListingQueryParamsCopyWithImpl;
@override @useResult
$Res call({
 String? cursor, int limit, int? priceMin, int? priceMax, ProductSortBy sortBy, SortDirection sortDir, Map<String, List<String>> filters
});




}
/// @nodoc
class __$ProductListingQueryParamsCopyWithImpl<$Res>
    implements _$ProductListingQueryParamsCopyWith<$Res> {
  __$ProductListingQueryParamsCopyWithImpl(this._self, this._then);

  final _ProductListingQueryParams _self;
  final $Res Function(_ProductListingQueryParams) _then;

/// Create a copy of ProductListingQueryParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cursor = freezed,Object? limit = null,Object? priceMin = freezed,Object? priceMax = freezed,Object? sortBy = null,Object? sortDir = null,Object? filters = null,}) {
  return _then(_ProductListingQueryParams(
cursor: freezed == cursor ? _self.cursor : cursor // ignore: cast_nullable_to_non_nullable
as String?,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,priceMin: freezed == priceMin ? _self.priceMin : priceMin // ignore: cast_nullable_to_non_nullable
as int?,priceMax: freezed == priceMax ? _self.priceMax : priceMax // ignore: cast_nullable_to_non_nullable
as int?,sortBy: null == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as ProductSortBy,sortDir: null == sortDir ? _self.sortDir : sortDir // ignore: cast_nullable_to_non_nullable
as SortDirection,filters: null == filters ? _self._filters : filters // ignore: cast_nullable_to_non_nullable
as Map<String, List<String>>,
  ));
}


}

// dart format on
