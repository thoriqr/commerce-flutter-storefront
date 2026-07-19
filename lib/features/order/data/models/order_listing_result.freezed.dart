// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_listing_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderListingResult {

 List<Order> get orders; PaginationMeta get meta;
/// Create a copy of OrderListingResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderListingResultCopyWith<OrderListingResult> get copyWith => _$OrderListingResultCopyWithImpl<OrderListingResult>(this as OrderListingResult, _$identity);

  /// Serializes this OrderListingResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderListingResult&&const DeepCollectionEquality().equals(other.orders, orders)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(orders),meta);

@override
String toString() {
  return 'OrderListingResult(orders: $orders, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $OrderListingResultCopyWith<$Res>  {
  factory $OrderListingResultCopyWith(OrderListingResult value, $Res Function(OrderListingResult) _then) = _$OrderListingResultCopyWithImpl;
@useResult
$Res call({
 List<Order> orders, PaginationMeta meta
});


$PaginationMetaCopyWith<$Res> get meta;

}
/// @nodoc
class _$OrderListingResultCopyWithImpl<$Res>
    implements $OrderListingResultCopyWith<$Res> {
  _$OrderListingResultCopyWithImpl(this._self, this._then);

  final OrderListingResult _self;
  final $Res Function(OrderListingResult) _then;

/// Create a copy of OrderListingResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orders = null,Object? meta = null,}) {
  return _then(_self.copyWith(
orders: null == orders ? _self.orders : orders // ignore: cast_nullable_to_non_nullable
as List<Order>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as PaginationMeta,
  ));
}
/// Create a copy of OrderListingResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationMetaCopyWith<$Res> get meta {
  
  return $PaginationMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderListingResult].
extension OrderListingResultPatterns on OrderListingResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderListingResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderListingResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderListingResult value)  $default,){
final _that = this;
switch (_that) {
case _OrderListingResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderListingResult value)?  $default,){
final _that = this;
switch (_that) {
case _OrderListingResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Order> orders,  PaginationMeta meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderListingResult() when $default != null:
return $default(_that.orders,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Order> orders,  PaginationMeta meta)  $default,) {final _that = this;
switch (_that) {
case _OrderListingResult():
return $default(_that.orders,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Order> orders,  PaginationMeta meta)?  $default,) {final _that = this;
switch (_that) {
case _OrderListingResult() when $default != null:
return $default(_that.orders,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderListingResult implements OrderListingResult {
  const _OrderListingResult({required final  List<Order> orders, required this.meta}): _orders = orders;
  factory _OrderListingResult.fromJson(Map<String, dynamic> json) => _$OrderListingResultFromJson(json);

 final  List<Order> _orders;
@override List<Order> get orders {
  if (_orders is EqualUnmodifiableListView) return _orders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_orders);
}

@override final  PaginationMeta meta;

/// Create a copy of OrderListingResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderListingResultCopyWith<_OrderListingResult> get copyWith => __$OrderListingResultCopyWithImpl<_OrderListingResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderListingResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderListingResult&&const DeepCollectionEquality().equals(other._orders, _orders)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_orders),meta);

@override
String toString() {
  return 'OrderListingResult(orders: $orders, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$OrderListingResultCopyWith<$Res> implements $OrderListingResultCopyWith<$Res> {
  factory _$OrderListingResultCopyWith(_OrderListingResult value, $Res Function(_OrderListingResult) _then) = __$OrderListingResultCopyWithImpl;
@override @useResult
$Res call({
 List<Order> orders, PaginationMeta meta
});


@override $PaginationMetaCopyWith<$Res> get meta;

}
/// @nodoc
class __$OrderListingResultCopyWithImpl<$Res>
    implements _$OrderListingResultCopyWith<$Res> {
  __$OrderListingResultCopyWithImpl(this._self, this._then);

  final _OrderListingResult _self;
  final $Res Function(_OrderListingResult) _then;

/// Create a copy of OrderListingResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orders = null,Object? meta = null,}) {
  return _then(_OrderListingResult(
orders: null == orders ? _self._orders : orders // ignore: cast_nullable_to_non_nullable
as List<Order>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as PaginationMeta,
  ));
}

/// Create a copy of OrderListingResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationMetaCopyWith<$Res> get meta {
  
  return $PaginationMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}

// dart format on
