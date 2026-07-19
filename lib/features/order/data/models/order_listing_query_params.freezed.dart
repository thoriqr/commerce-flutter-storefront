// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_listing_query_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrderListingQueryParams {

 int get page; int get limit; OrderSortStatus get status;
/// Create a copy of OrderListingQueryParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderListingQueryParamsCopyWith<OrderListingQueryParams> get copyWith => _$OrderListingQueryParamsCopyWithImpl<OrderListingQueryParams>(this as OrderListingQueryParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderListingQueryParams&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,page,limit,status);

@override
String toString() {
  return 'OrderListingQueryParams(page: $page, limit: $limit, status: $status)';
}


}

/// @nodoc
abstract mixin class $OrderListingQueryParamsCopyWith<$Res>  {
  factory $OrderListingQueryParamsCopyWith(OrderListingQueryParams value, $Res Function(OrderListingQueryParams) _then) = _$OrderListingQueryParamsCopyWithImpl;
@useResult
$Res call({
 int page, int limit, OrderSortStatus status
});




}
/// @nodoc
class _$OrderListingQueryParamsCopyWithImpl<$Res>
    implements $OrderListingQueryParamsCopyWith<$Res> {
  _$OrderListingQueryParamsCopyWithImpl(this._self, this._then);

  final OrderListingQueryParams _self;
  final $Res Function(OrderListingQueryParams) _then;

/// Create a copy of OrderListingQueryParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? limit = null,Object? status = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderSortStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderListingQueryParams].
extension OrderListingQueryParamsPatterns on OrderListingQueryParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderListingQueryParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderListingQueryParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderListingQueryParams value)  $default,){
final _that = this;
switch (_that) {
case _OrderListingQueryParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderListingQueryParams value)?  $default,){
final _that = this;
switch (_that) {
case _OrderListingQueryParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int page,  int limit,  OrderSortStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderListingQueryParams() when $default != null:
return $default(_that.page,_that.limit,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int page,  int limit,  OrderSortStatus status)  $default,) {final _that = this;
switch (_that) {
case _OrderListingQueryParams():
return $default(_that.page,_that.limit,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int page,  int limit,  OrderSortStatus status)?  $default,) {final _that = this;
switch (_that) {
case _OrderListingQueryParams() when $default != null:
return $default(_that.page,_that.limit,_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _OrderListingQueryParams implements OrderListingQueryParams {
  const _OrderListingQueryParams({this.page = 1, this.limit = 10, this.status = OrderSortStatus.completed});
  

@override@JsonKey() final  int page;
@override@JsonKey() final  int limit;
@override@JsonKey() final  OrderSortStatus status;

/// Create a copy of OrderListingQueryParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderListingQueryParamsCopyWith<_OrderListingQueryParams> get copyWith => __$OrderListingQueryParamsCopyWithImpl<_OrderListingQueryParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderListingQueryParams&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,page,limit,status);

@override
String toString() {
  return 'OrderListingQueryParams(page: $page, limit: $limit, status: $status)';
}


}

/// @nodoc
abstract mixin class _$OrderListingQueryParamsCopyWith<$Res> implements $OrderListingQueryParamsCopyWith<$Res> {
  factory _$OrderListingQueryParamsCopyWith(_OrderListingQueryParams value, $Res Function(_OrderListingQueryParams) _then) = __$OrderListingQueryParamsCopyWithImpl;
@override @useResult
$Res call({
 int page, int limit, OrderSortStatus status
});




}
/// @nodoc
class __$OrderListingQueryParamsCopyWithImpl<$Res>
    implements _$OrderListingQueryParamsCopyWith<$Res> {
  __$OrderListingQueryParamsCopyWithImpl(this._self, this._then);

  final _OrderListingQueryParams _self;
  final $Res Function(_OrderListingQueryParams) _then;

/// Create a copy of OrderListingQueryParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,Object? status = null,}) {
  return _then(_OrderListingQueryParams(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderSortStatus,
  ));
}


}

// dart format on
