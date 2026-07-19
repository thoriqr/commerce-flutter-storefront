// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Order {

 int get id; String get orderCode; int get productId; String get slug; OrderStatus get status; int get total; String get createdAt; int get itemCount; OrderPreviewItem get previewItem; bool get canConfirm;
/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderCopyWith<Order> get copyWith => _$OrderCopyWithImpl<Order>(this as Order, _$identity);

  /// Serializes this Order to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Order&&(identical(other.id, id) || other.id == id)&&(identical(other.orderCode, orderCode) || other.orderCode == orderCode)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.status, status) || other.status == status)&&(identical(other.total, total) || other.total == total)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.itemCount, itemCount) || other.itemCount == itemCount)&&(identical(other.previewItem, previewItem) || other.previewItem == previewItem)&&(identical(other.canConfirm, canConfirm) || other.canConfirm == canConfirm));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderCode,productId,slug,status,total,createdAt,itemCount,previewItem,canConfirm);

@override
String toString() {
  return 'Order(id: $id, orderCode: $orderCode, productId: $productId, slug: $slug, status: $status, total: $total, createdAt: $createdAt, itemCount: $itemCount, previewItem: $previewItem, canConfirm: $canConfirm)';
}


}

/// @nodoc
abstract mixin class $OrderCopyWith<$Res>  {
  factory $OrderCopyWith(Order value, $Res Function(Order) _then) = _$OrderCopyWithImpl;
@useResult
$Res call({
 int id, String orderCode, int productId, String slug, OrderStatus status, int total, String createdAt, int itemCount, OrderPreviewItem previewItem, bool canConfirm
});


$OrderPreviewItemCopyWith<$Res> get previewItem;

}
/// @nodoc
class _$OrderCopyWithImpl<$Res>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._self, this._then);

  final Order _self;
  final $Res Function(Order) _then;

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? orderCode = null,Object? productId = null,Object? slug = null,Object? status = null,Object? total = null,Object? createdAt = null,Object? itemCount = null,Object? previewItem = null,Object? canConfirm = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,orderCode: null == orderCode ? _self.orderCode : orderCode // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderStatus,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,itemCount: null == itemCount ? _self.itemCount : itemCount // ignore: cast_nullable_to_non_nullable
as int,previewItem: null == previewItem ? _self.previewItem : previewItem // ignore: cast_nullable_to_non_nullable
as OrderPreviewItem,canConfirm: null == canConfirm ? _self.canConfirm : canConfirm // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderPreviewItemCopyWith<$Res> get previewItem {
  
  return $OrderPreviewItemCopyWith<$Res>(_self.previewItem, (value) {
    return _then(_self.copyWith(previewItem: value));
  });
}
}


/// Adds pattern-matching-related methods to [Order].
extension OrderPatterns on Order {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Order value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Order() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Order value)  $default,){
final _that = this;
switch (_that) {
case _Order():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Order value)?  $default,){
final _that = this;
switch (_that) {
case _Order() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String orderCode,  int productId,  String slug,  OrderStatus status,  int total,  String createdAt,  int itemCount,  OrderPreviewItem previewItem,  bool canConfirm)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Order() when $default != null:
return $default(_that.id,_that.orderCode,_that.productId,_that.slug,_that.status,_that.total,_that.createdAt,_that.itemCount,_that.previewItem,_that.canConfirm);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String orderCode,  int productId,  String slug,  OrderStatus status,  int total,  String createdAt,  int itemCount,  OrderPreviewItem previewItem,  bool canConfirm)  $default,) {final _that = this;
switch (_that) {
case _Order():
return $default(_that.id,_that.orderCode,_that.productId,_that.slug,_that.status,_that.total,_that.createdAt,_that.itemCount,_that.previewItem,_that.canConfirm);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String orderCode,  int productId,  String slug,  OrderStatus status,  int total,  String createdAt,  int itemCount,  OrderPreviewItem previewItem,  bool canConfirm)?  $default,) {final _that = this;
switch (_that) {
case _Order() when $default != null:
return $default(_that.id,_that.orderCode,_that.productId,_that.slug,_that.status,_that.total,_that.createdAt,_that.itemCount,_that.previewItem,_that.canConfirm);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Order implements Order {
  const _Order({required this.id, required this.orderCode, required this.productId, required this.slug, required this.status, required this.total, required this.createdAt, required this.itemCount, required this.previewItem, required this.canConfirm});
  factory _Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

@override final  int id;
@override final  String orderCode;
@override final  int productId;
@override final  String slug;
@override final  OrderStatus status;
@override final  int total;
@override final  String createdAt;
@override final  int itemCount;
@override final  OrderPreviewItem previewItem;
@override final  bool canConfirm;

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderCopyWith<_Order> get copyWith => __$OrderCopyWithImpl<_Order>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Order&&(identical(other.id, id) || other.id == id)&&(identical(other.orderCode, orderCode) || other.orderCode == orderCode)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.status, status) || other.status == status)&&(identical(other.total, total) || other.total == total)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.itemCount, itemCount) || other.itemCount == itemCount)&&(identical(other.previewItem, previewItem) || other.previewItem == previewItem)&&(identical(other.canConfirm, canConfirm) || other.canConfirm == canConfirm));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderCode,productId,slug,status,total,createdAt,itemCount,previewItem,canConfirm);

@override
String toString() {
  return 'Order(id: $id, orderCode: $orderCode, productId: $productId, slug: $slug, status: $status, total: $total, createdAt: $createdAt, itemCount: $itemCount, previewItem: $previewItem, canConfirm: $canConfirm)';
}


}

/// @nodoc
abstract mixin class _$OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$OrderCopyWith(_Order value, $Res Function(_Order) _then) = __$OrderCopyWithImpl;
@override @useResult
$Res call({
 int id, String orderCode, int productId, String slug, OrderStatus status, int total, String createdAt, int itemCount, OrderPreviewItem previewItem, bool canConfirm
});


@override $OrderPreviewItemCopyWith<$Res> get previewItem;

}
/// @nodoc
class __$OrderCopyWithImpl<$Res>
    implements _$OrderCopyWith<$Res> {
  __$OrderCopyWithImpl(this._self, this._then);

  final _Order _self;
  final $Res Function(_Order) _then;

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? orderCode = null,Object? productId = null,Object? slug = null,Object? status = null,Object? total = null,Object? createdAt = null,Object? itemCount = null,Object? previewItem = null,Object? canConfirm = null,}) {
  return _then(_Order(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,orderCode: null == orderCode ? _self.orderCode : orderCode // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderStatus,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,itemCount: null == itemCount ? _self.itemCount : itemCount // ignore: cast_nullable_to_non_nullable
as int,previewItem: null == previewItem ? _self.previewItem : previewItem // ignore: cast_nullable_to_non_nullable
as OrderPreviewItem,canConfirm: null == canConfirm ? _self.canConfirm : canConfirm // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderPreviewItemCopyWith<$Res> get previewItem {
  
  return $OrderPreviewItemCopyWith<$Res>(_self.previewItem, (value) {
    return _then(_self.copyWith(previewItem: value));
  });
}
}


/// @nodoc
mixin _$OrderPreviewItem {

 String get name; String? get imageKey;
/// Create a copy of OrderPreviewItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderPreviewItemCopyWith<OrderPreviewItem> get copyWith => _$OrderPreviewItemCopyWithImpl<OrderPreviewItem>(this as OrderPreviewItem, _$identity);

  /// Serializes this OrderPreviewItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderPreviewItem&&(identical(other.name, name) || other.name == name)&&(identical(other.imageKey, imageKey) || other.imageKey == imageKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,imageKey);

@override
String toString() {
  return 'OrderPreviewItem(name: $name, imageKey: $imageKey)';
}


}

/// @nodoc
abstract mixin class $OrderPreviewItemCopyWith<$Res>  {
  factory $OrderPreviewItemCopyWith(OrderPreviewItem value, $Res Function(OrderPreviewItem) _then) = _$OrderPreviewItemCopyWithImpl;
@useResult
$Res call({
 String name, String? imageKey
});




}
/// @nodoc
class _$OrderPreviewItemCopyWithImpl<$Res>
    implements $OrderPreviewItemCopyWith<$Res> {
  _$OrderPreviewItemCopyWithImpl(this._self, this._then);

  final OrderPreviewItem _self;
  final $Res Function(OrderPreviewItem) _then;

/// Create a copy of OrderPreviewItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? imageKey = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageKey: freezed == imageKey ? _self.imageKey : imageKey // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderPreviewItem].
extension OrderPreviewItemPatterns on OrderPreviewItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderPreviewItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderPreviewItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderPreviewItem value)  $default,){
final _that = this;
switch (_that) {
case _OrderPreviewItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderPreviewItem value)?  $default,){
final _that = this;
switch (_that) {
case _OrderPreviewItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String? imageKey)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderPreviewItem() when $default != null:
return $default(_that.name,_that.imageKey);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String? imageKey)  $default,) {final _that = this;
switch (_that) {
case _OrderPreviewItem():
return $default(_that.name,_that.imageKey);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String? imageKey)?  $default,) {final _that = this;
switch (_that) {
case _OrderPreviewItem() when $default != null:
return $default(_that.name,_that.imageKey);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderPreviewItem implements OrderPreviewItem {
  const _OrderPreviewItem({required this.name, required this.imageKey});
  factory _OrderPreviewItem.fromJson(Map<String, dynamic> json) => _$OrderPreviewItemFromJson(json);

@override final  String name;
@override final  String? imageKey;

/// Create a copy of OrderPreviewItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderPreviewItemCopyWith<_OrderPreviewItem> get copyWith => __$OrderPreviewItemCopyWithImpl<_OrderPreviewItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderPreviewItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderPreviewItem&&(identical(other.name, name) || other.name == name)&&(identical(other.imageKey, imageKey) || other.imageKey == imageKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,imageKey);

@override
String toString() {
  return 'OrderPreviewItem(name: $name, imageKey: $imageKey)';
}


}

/// @nodoc
abstract mixin class _$OrderPreviewItemCopyWith<$Res> implements $OrderPreviewItemCopyWith<$Res> {
  factory _$OrderPreviewItemCopyWith(_OrderPreviewItem value, $Res Function(_OrderPreviewItem) _then) = __$OrderPreviewItemCopyWithImpl;
@override @useResult
$Res call({
 String name, String? imageKey
});




}
/// @nodoc
class __$OrderPreviewItemCopyWithImpl<$Res>
    implements _$OrderPreviewItemCopyWith<$Res> {
  __$OrderPreviewItemCopyWithImpl(this._self, this._then);

  final _OrderPreviewItem _self;
  final $Res Function(_OrderPreviewItem) _then;

/// Create a copy of OrderPreviewItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? imageKey = freezed,}) {
  return _then(_OrderPreviewItem(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageKey: freezed == imageKey ? _self.imageKey : imageKey // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
