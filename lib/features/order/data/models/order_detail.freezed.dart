// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderDetail {

 String get orderCode; int get subtotal; int get shippingCost; int get total; OrderRawStatus get rawStatus; OrderStatus get status; PaymentStatus get paymentStatus; String get expiresAt; String? get paidAt; bool get canPay; OrderUserAddress get address; OrderShipping get shipping; List<OrderItem> get items; OrderWarehouseOrigin get warehouseOrigin; List<OrderTimeline> get timeline;
/// Create a copy of OrderDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderDetailCopyWith<OrderDetail> get copyWith => _$OrderDetailCopyWithImpl<OrderDetail>(this as OrderDetail, _$identity);

  /// Serializes this OrderDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderDetail&&(identical(other.orderCode, orderCode) || other.orderCode == orderCode)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.shippingCost, shippingCost) || other.shippingCost == shippingCost)&&(identical(other.total, total) || other.total == total)&&(identical(other.rawStatus, rawStatus) || other.rawStatus == rawStatus)&&(identical(other.status, status) || other.status == status)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&(identical(other.canPay, canPay) || other.canPay == canPay)&&(identical(other.address, address) || other.address == address)&&(identical(other.shipping, shipping) || other.shipping == shipping)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.warehouseOrigin, warehouseOrigin) || other.warehouseOrigin == warehouseOrigin)&&const DeepCollectionEquality().equals(other.timeline, timeline));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderCode,subtotal,shippingCost,total,rawStatus,status,paymentStatus,expiresAt,paidAt,canPay,address,shipping,const DeepCollectionEquality().hash(items),warehouseOrigin,const DeepCollectionEquality().hash(timeline));

@override
String toString() {
  return 'OrderDetail(orderCode: $orderCode, subtotal: $subtotal, shippingCost: $shippingCost, total: $total, rawStatus: $rawStatus, status: $status, paymentStatus: $paymentStatus, expiresAt: $expiresAt, paidAt: $paidAt, canPay: $canPay, address: $address, shipping: $shipping, items: $items, warehouseOrigin: $warehouseOrigin, timeline: $timeline)';
}


}

/// @nodoc
abstract mixin class $OrderDetailCopyWith<$Res>  {
  factory $OrderDetailCopyWith(OrderDetail value, $Res Function(OrderDetail) _then) = _$OrderDetailCopyWithImpl;
@useResult
$Res call({
 String orderCode, int subtotal, int shippingCost, int total, OrderRawStatus rawStatus, OrderStatus status, PaymentStatus paymentStatus, String expiresAt, String? paidAt, bool canPay, OrderUserAddress address, OrderShipping shipping, List<OrderItem> items, OrderWarehouseOrigin warehouseOrigin, List<OrderTimeline> timeline
});


$OrderUserAddressCopyWith<$Res> get address;$OrderShippingCopyWith<$Res> get shipping;$OrderWarehouseOriginCopyWith<$Res> get warehouseOrigin;

}
/// @nodoc
class _$OrderDetailCopyWithImpl<$Res>
    implements $OrderDetailCopyWith<$Res> {
  _$OrderDetailCopyWithImpl(this._self, this._then);

  final OrderDetail _self;
  final $Res Function(OrderDetail) _then;

/// Create a copy of OrderDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orderCode = null,Object? subtotal = null,Object? shippingCost = null,Object? total = null,Object? rawStatus = null,Object? status = null,Object? paymentStatus = null,Object? expiresAt = null,Object? paidAt = freezed,Object? canPay = null,Object? address = null,Object? shipping = null,Object? items = null,Object? warehouseOrigin = null,Object? timeline = null,}) {
  return _then(_self.copyWith(
orderCode: null == orderCode ? _self.orderCode : orderCode // ignore: cast_nullable_to_non_nullable
as String,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as int,shippingCost: null == shippingCost ? _self.shippingCost : shippingCost // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,rawStatus: null == rawStatus ? _self.rawStatus : rawStatus // ignore: cast_nullable_to_non_nullable
as OrderRawStatus,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderStatus,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as PaymentStatus,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as String?,canPay: null == canPay ? _self.canPay : canPay // ignore: cast_nullable_to_non_nullable
as bool,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as OrderUserAddress,shipping: null == shipping ? _self.shipping : shipping // ignore: cast_nullable_to_non_nullable
as OrderShipping,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<OrderItem>,warehouseOrigin: null == warehouseOrigin ? _self.warehouseOrigin : warehouseOrigin // ignore: cast_nullable_to_non_nullable
as OrderWarehouseOrigin,timeline: null == timeline ? _self.timeline : timeline // ignore: cast_nullable_to_non_nullable
as List<OrderTimeline>,
  ));
}
/// Create a copy of OrderDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderUserAddressCopyWith<$Res> get address {
  
  return $OrderUserAddressCopyWith<$Res>(_self.address, (value) {
    return _then(_self.copyWith(address: value));
  });
}/// Create a copy of OrderDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderShippingCopyWith<$Res> get shipping {
  
  return $OrderShippingCopyWith<$Res>(_self.shipping, (value) {
    return _then(_self.copyWith(shipping: value));
  });
}/// Create a copy of OrderDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderWarehouseOriginCopyWith<$Res> get warehouseOrigin {
  
  return $OrderWarehouseOriginCopyWith<$Res>(_self.warehouseOrigin, (value) {
    return _then(_self.copyWith(warehouseOrigin: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderDetail].
extension OrderDetailPatterns on OrderDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderDetail value)  $default,){
final _that = this;
switch (_that) {
case _OrderDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderDetail value)?  $default,){
final _that = this;
switch (_that) {
case _OrderDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String orderCode,  int subtotal,  int shippingCost,  int total,  OrderRawStatus rawStatus,  OrderStatus status,  PaymentStatus paymentStatus,  String expiresAt,  String? paidAt,  bool canPay,  OrderUserAddress address,  OrderShipping shipping,  List<OrderItem> items,  OrderWarehouseOrigin warehouseOrigin,  List<OrderTimeline> timeline)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderDetail() when $default != null:
return $default(_that.orderCode,_that.subtotal,_that.shippingCost,_that.total,_that.rawStatus,_that.status,_that.paymentStatus,_that.expiresAt,_that.paidAt,_that.canPay,_that.address,_that.shipping,_that.items,_that.warehouseOrigin,_that.timeline);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String orderCode,  int subtotal,  int shippingCost,  int total,  OrderRawStatus rawStatus,  OrderStatus status,  PaymentStatus paymentStatus,  String expiresAt,  String? paidAt,  bool canPay,  OrderUserAddress address,  OrderShipping shipping,  List<OrderItem> items,  OrderWarehouseOrigin warehouseOrigin,  List<OrderTimeline> timeline)  $default,) {final _that = this;
switch (_that) {
case _OrderDetail():
return $default(_that.orderCode,_that.subtotal,_that.shippingCost,_that.total,_that.rawStatus,_that.status,_that.paymentStatus,_that.expiresAt,_that.paidAt,_that.canPay,_that.address,_that.shipping,_that.items,_that.warehouseOrigin,_that.timeline);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String orderCode,  int subtotal,  int shippingCost,  int total,  OrderRawStatus rawStatus,  OrderStatus status,  PaymentStatus paymentStatus,  String expiresAt,  String? paidAt,  bool canPay,  OrderUserAddress address,  OrderShipping shipping,  List<OrderItem> items,  OrderWarehouseOrigin warehouseOrigin,  List<OrderTimeline> timeline)?  $default,) {final _that = this;
switch (_that) {
case _OrderDetail() when $default != null:
return $default(_that.orderCode,_that.subtotal,_that.shippingCost,_that.total,_that.rawStatus,_that.status,_that.paymentStatus,_that.expiresAt,_that.paidAt,_that.canPay,_that.address,_that.shipping,_that.items,_that.warehouseOrigin,_that.timeline);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderDetail implements OrderDetail {
  const _OrderDetail({required this.orderCode, required this.subtotal, required this.shippingCost, required this.total, required this.rawStatus, required this.status, required this.paymentStatus, required this.expiresAt, required this.paidAt, required this.canPay, required this.address, required this.shipping, required final  List<OrderItem> items, required this.warehouseOrigin, required final  List<OrderTimeline> timeline}): _items = items,_timeline = timeline;
  factory _OrderDetail.fromJson(Map<String, dynamic> json) => _$OrderDetailFromJson(json);

@override final  String orderCode;
@override final  int subtotal;
@override final  int shippingCost;
@override final  int total;
@override final  OrderRawStatus rawStatus;
@override final  OrderStatus status;
@override final  PaymentStatus paymentStatus;
@override final  String expiresAt;
@override final  String? paidAt;
@override final  bool canPay;
@override final  OrderUserAddress address;
@override final  OrderShipping shipping;
 final  List<OrderItem> _items;
@override List<OrderItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  OrderWarehouseOrigin warehouseOrigin;
 final  List<OrderTimeline> _timeline;
@override List<OrderTimeline> get timeline {
  if (_timeline is EqualUnmodifiableListView) return _timeline;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_timeline);
}


/// Create a copy of OrderDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderDetailCopyWith<_OrderDetail> get copyWith => __$OrderDetailCopyWithImpl<_OrderDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderDetail&&(identical(other.orderCode, orderCode) || other.orderCode == orderCode)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.shippingCost, shippingCost) || other.shippingCost == shippingCost)&&(identical(other.total, total) || other.total == total)&&(identical(other.rawStatus, rawStatus) || other.rawStatus == rawStatus)&&(identical(other.status, status) || other.status == status)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&(identical(other.canPay, canPay) || other.canPay == canPay)&&(identical(other.address, address) || other.address == address)&&(identical(other.shipping, shipping) || other.shipping == shipping)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.warehouseOrigin, warehouseOrigin) || other.warehouseOrigin == warehouseOrigin)&&const DeepCollectionEquality().equals(other._timeline, _timeline));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderCode,subtotal,shippingCost,total,rawStatus,status,paymentStatus,expiresAt,paidAt,canPay,address,shipping,const DeepCollectionEquality().hash(_items),warehouseOrigin,const DeepCollectionEquality().hash(_timeline));

@override
String toString() {
  return 'OrderDetail(orderCode: $orderCode, subtotal: $subtotal, shippingCost: $shippingCost, total: $total, rawStatus: $rawStatus, status: $status, paymentStatus: $paymentStatus, expiresAt: $expiresAt, paidAt: $paidAt, canPay: $canPay, address: $address, shipping: $shipping, items: $items, warehouseOrigin: $warehouseOrigin, timeline: $timeline)';
}


}

/// @nodoc
abstract mixin class _$OrderDetailCopyWith<$Res> implements $OrderDetailCopyWith<$Res> {
  factory _$OrderDetailCopyWith(_OrderDetail value, $Res Function(_OrderDetail) _then) = __$OrderDetailCopyWithImpl;
@override @useResult
$Res call({
 String orderCode, int subtotal, int shippingCost, int total, OrderRawStatus rawStatus, OrderStatus status, PaymentStatus paymentStatus, String expiresAt, String? paidAt, bool canPay, OrderUserAddress address, OrderShipping shipping, List<OrderItem> items, OrderWarehouseOrigin warehouseOrigin, List<OrderTimeline> timeline
});


@override $OrderUserAddressCopyWith<$Res> get address;@override $OrderShippingCopyWith<$Res> get shipping;@override $OrderWarehouseOriginCopyWith<$Res> get warehouseOrigin;

}
/// @nodoc
class __$OrderDetailCopyWithImpl<$Res>
    implements _$OrderDetailCopyWith<$Res> {
  __$OrderDetailCopyWithImpl(this._self, this._then);

  final _OrderDetail _self;
  final $Res Function(_OrderDetail) _then;

/// Create a copy of OrderDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orderCode = null,Object? subtotal = null,Object? shippingCost = null,Object? total = null,Object? rawStatus = null,Object? status = null,Object? paymentStatus = null,Object? expiresAt = null,Object? paidAt = freezed,Object? canPay = null,Object? address = null,Object? shipping = null,Object? items = null,Object? warehouseOrigin = null,Object? timeline = null,}) {
  return _then(_OrderDetail(
orderCode: null == orderCode ? _self.orderCode : orderCode // ignore: cast_nullable_to_non_nullable
as String,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as int,shippingCost: null == shippingCost ? _self.shippingCost : shippingCost // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,rawStatus: null == rawStatus ? _self.rawStatus : rawStatus // ignore: cast_nullable_to_non_nullable
as OrderRawStatus,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderStatus,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as PaymentStatus,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as String?,canPay: null == canPay ? _self.canPay : canPay // ignore: cast_nullable_to_non_nullable
as bool,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as OrderUserAddress,shipping: null == shipping ? _self.shipping : shipping // ignore: cast_nullable_to_non_nullable
as OrderShipping,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<OrderItem>,warehouseOrigin: null == warehouseOrigin ? _self.warehouseOrigin : warehouseOrigin // ignore: cast_nullable_to_non_nullable
as OrderWarehouseOrigin,timeline: null == timeline ? _self._timeline : timeline // ignore: cast_nullable_to_non_nullable
as List<OrderTimeline>,
  ));
}

/// Create a copy of OrderDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderUserAddressCopyWith<$Res> get address {
  
  return $OrderUserAddressCopyWith<$Res>(_self.address, (value) {
    return _then(_self.copyWith(address: value));
  });
}/// Create a copy of OrderDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderShippingCopyWith<$Res> get shipping {
  
  return $OrderShippingCopyWith<$Res>(_self.shipping, (value) {
    return _then(_self.copyWith(shipping: value));
  });
}/// Create a copy of OrderDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderWarehouseOriginCopyWith<$Res> get warehouseOrigin {
  
  return $OrderWarehouseOriginCopyWith<$Res>(_self.warehouseOrigin, (value) {
    return _then(_self.copyWith(warehouseOrigin: value));
  });
}
}


/// @nodoc
mixin _$OrderUserAddress {

 String get recipientName; String get phone; String get addressLine; String get provinceName; String get cityName; String get districtName; String get postalCode;
/// Create a copy of OrderUserAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderUserAddressCopyWith<OrderUserAddress> get copyWith => _$OrderUserAddressCopyWithImpl<OrderUserAddress>(this as OrderUserAddress, _$identity);

  /// Serializes this OrderUserAddress to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderUserAddress&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.addressLine, addressLine) || other.addressLine == addressLine)&&(identical(other.provinceName, provinceName) || other.provinceName == provinceName)&&(identical(other.cityName, cityName) || other.cityName == cityName)&&(identical(other.districtName, districtName) || other.districtName == districtName)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,recipientName,phone,addressLine,provinceName,cityName,districtName,postalCode);

@override
String toString() {
  return 'OrderUserAddress(recipientName: $recipientName, phone: $phone, addressLine: $addressLine, provinceName: $provinceName, cityName: $cityName, districtName: $districtName, postalCode: $postalCode)';
}


}

/// @nodoc
abstract mixin class $OrderUserAddressCopyWith<$Res>  {
  factory $OrderUserAddressCopyWith(OrderUserAddress value, $Res Function(OrderUserAddress) _then) = _$OrderUserAddressCopyWithImpl;
@useResult
$Res call({
 String recipientName, String phone, String addressLine, String provinceName, String cityName, String districtName, String postalCode
});




}
/// @nodoc
class _$OrderUserAddressCopyWithImpl<$Res>
    implements $OrderUserAddressCopyWith<$Res> {
  _$OrderUserAddressCopyWithImpl(this._self, this._then);

  final OrderUserAddress _self;
  final $Res Function(OrderUserAddress) _then;

/// Create a copy of OrderUserAddress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? recipientName = null,Object? phone = null,Object? addressLine = null,Object? provinceName = null,Object? cityName = null,Object? districtName = null,Object? postalCode = null,}) {
  return _then(_self.copyWith(
recipientName: null == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,addressLine: null == addressLine ? _self.addressLine : addressLine // ignore: cast_nullable_to_non_nullable
as String,provinceName: null == provinceName ? _self.provinceName : provinceName // ignore: cast_nullable_to_non_nullable
as String,cityName: null == cityName ? _self.cityName : cityName // ignore: cast_nullable_to_non_nullable
as String,districtName: null == districtName ? _self.districtName : districtName // ignore: cast_nullable_to_non_nullable
as String,postalCode: null == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderUserAddress].
extension OrderUserAddressPatterns on OrderUserAddress {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderUserAddress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderUserAddress() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderUserAddress value)  $default,){
final _that = this;
switch (_that) {
case _OrderUserAddress():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderUserAddress value)?  $default,){
final _that = this;
switch (_that) {
case _OrderUserAddress() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String recipientName,  String phone,  String addressLine,  String provinceName,  String cityName,  String districtName,  String postalCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderUserAddress() when $default != null:
return $default(_that.recipientName,_that.phone,_that.addressLine,_that.provinceName,_that.cityName,_that.districtName,_that.postalCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String recipientName,  String phone,  String addressLine,  String provinceName,  String cityName,  String districtName,  String postalCode)  $default,) {final _that = this;
switch (_that) {
case _OrderUserAddress():
return $default(_that.recipientName,_that.phone,_that.addressLine,_that.provinceName,_that.cityName,_that.districtName,_that.postalCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String recipientName,  String phone,  String addressLine,  String provinceName,  String cityName,  String districtName,  String postalCode)?  $default,) {final _that = this;
switch (_that) {
case _OrderUserAddress() when $default != null:
return $default(_that.recipientName,_that.phone,_that.addressLine,_that.provinceName,_that.cityName,_that.districtName,_that.postalCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderUserAddress implements OrderUserAddress {
  const _OrderUserAddress({required this.recipientName, required this.phone, required this.addressLine, required this.provinceName, required this.cityName, required this.districtName, required this.postalCode});
  factory _OrderUserAddress.fromJson(Map<String, dynamic> json) => _$OrderUserAddressFromJson(json);

@override final  String recipientName;
@override final  String phone;
@override final  String addressLine;
@override final  String provinceName;
@override final  String cityName;
@override final  String districtName;
@override final  String postalCode;

/// Create a copy of OrderUserAddress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderUserAddressCopyWith<_OrderUserAddress> get copyWith => __$OrderUserAddressCopyWithImpl<_OrderUserAddress>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderUserAddressToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderUserAddress&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.addressLine, addressLine) || other.addressLine == addressLine)&&(identical(other.provinceName, provinceName) || other.provinceName == provinceName)&&(identical(other.cityName, cityName) || other.cityName == cityName)&&(identical(other.districtName, districtName) || other.districtName == districtName)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,recipientName,phone,addressLine,provinceName,cityName,districtName,postalCode);

@override
String toString() {
  return 'OrderUserAddress(recipientName: $recipientName, phone: $phone, addressLine: $addressLine, provinceName: $provinceName, cityName: $cityName, districtName: $districtName, postalCode: $postalCode)';
}


}

/// @nodoc
abstract mixin class _$OrderUserAddressCopyWith<$Res> implements $OrderUserAddressCopyWith<$Res> {
  factory _$OrderUserAddressCopyWith(_OrderUserAddress value, $Res Function(_OrderUserAddress) _then) = __$OrderUserAddressCopyWithImpl;
@override @useResult
$Res call({
 String recipientName, String phone, String addressLine, String provinceName, String cityName, String districtName, String postalCode
});




}
/// @nodoc
class __$OrderUserAddressCopyWithImpl<$Res>
    implements _$OrderUserAddressCopyWith<$Res> {
  __$OrderUserAddressCopyWithImpl(this._self, this._then);

  final _OrderUserAddress _self;
  final $Res Function(_OrderUserAddress) _then;

/// Create a copy of OrderUserAddress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? recipientName = null,Object? phone = null,Object? addressLine = null,Object? provinceName = null,Object? cityName = null,Object? districtName = null,Object? postalCode = null,}) {
  return _then(_OrderUserAddress(
recipientName: null == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,addressLine: null == addressLine ? _self.addressLine : addressLine // ignore: cast_nullable_to_non_nullable
as String,provinceName: null == provinceName ? _self.provinceName : provinceName // ignore: cast_nullable_to_non_nullable
as String,cityName: null == cityName ? _self.cityName : cityName // ignore: cast_nullable_to_non_nullable
as String,districtName: null == districtName ? _self.districtName : districtName // ignore: cast_nullable_to_non_nullable
as String,postalCode: null == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$OrderShipping {

 String get courierCode; String get courierName; String get courierService; String get etd; String? get trackingNumber; ShipmentStatus get status;
/// Create a copy of OrderShipping
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderShippingCopyWith<OrderShipping> get copyWith => _$OrderShippingCopyWithImpl<OrderShipping>(this as OrderShipping, _$identity);

  /// Serializes this OrderShipping to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderShipping&&(identical(other.courierCode, courierCode) || other.courierCode == courierCode)&&(identical(other.courierName, courierName) || other.courierName == courierName)&&(identical(other.courierService, courierService) || other.courierService == courierService)&&(identical(other.etd, etd) || other.etd == etd)&&(identical(other.trackingNumber, trackingNumber) || other.trackingNumber == trackingNumber)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,courierCode,courierName,courierService,etd,trackingNumber,status);

@override
String toString() {
  return 'OrderShipping(courierCode: $courierCode, courierName: $courierName, courierService: $courierService, etd: $etd, trackingNumber: $trackingNumber, status: $status)';
}


}

/// @nodoc
abstract mixin class $OrderShippingCopyWith<$Res>  {
  factory $OrderShippingCopyWith(OrderShipping value, $Res Function(OrderShipping) _then) = _$OrderShippingCopyWithImpl;
@useResult
$Res call({
 String courierCode, String courierName, String courierService, String etd, String? trackingNumber, ShipmentStatus status
});




}
/// @nodoc
class _$OrderShippingCopyWithImpl<$Res>
    implements $OrderShippingCopyWith<$Res> {
  _$OrderShippingCopyWithImpl(this._self, this._then);

  final OrderShipping _self;
  final $Res Function(OrderShipping) _then;

/// Create a copy of OrderShipping
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? courierCode = null,Object? courierName = null,Object? courierService = null,Object? etd = null,Object? trackingNumber = freezed,Object? status = null,}) {
  return _then(_self.copyWith(
courierCode: null == courierCode ? _self.courierCode : courierCode // ignore: cast_nullable_to_non_nullable
as String,courierName: null == courierName ? _self.courierName : courierName // ignore: cast_nullable_to_non_nullable
as String,courierService: null == courierService ? _self.courierService : courierService // ignore: cast_nullable_to_non_nullable
as String,etd: null == etd ? _self.etd : etd // ignore: cast_nullable_to_non_nullable
as String,trackingNumber: freezed == trackingNumber ? _self.trackingNumber : trackingNumber // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ShipmentStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderShipping].
extension OrderShippingPatterns on OrderShipping {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderShipping value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderShipping() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderShipping value)  $default,){
final _that = this;
switch (_that) {
case _OrderShipping():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderShipping value)?  $default,){
final _that = this;
switch (_that) {
case _OrderShipping() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String courierCode,  String courierName,  String courierService,  String etd,  String? trackingNumber,  ShipmentStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderShipping() when $default != null:
return $default(_that.courierCode,_that.courierName,_that.courierService,_that.etd,_that.trackingNumber,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String courierCode,  String courierName,  String courierService,  String etd,  String? trackingNumber,  ShipmentStatus status)  $default,) {final _that = this;
switch (_that) {
case _OrderShipping():
return $default(_that.courierCode,_that.courierName,_that.courierService,_that.etd,_that.trackingNumber,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String courierCode,  String courierName,  String courierService,  String etd,  String? trackingNumber,  ShipmentStatus status)?  $default,) {final _that = this;
switch (_that) {
case _OrderShipping() when $default != null:
return $default(_that.courierCode,_that.courierName,_that.courierService,_that.etd,_that.trackingNumber,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderShipping implements OrderShipping {
  const _OrderShipping({required this.courierCode, required this.courierName, required this.courierService, required this.etd, this.trackingNumber, required this.status});
  factory _OrderShipping.fromJson(Map<String, dynamic> json) => _$OrderShippingFromJson(json);

@override final  String courierCode;
@override final  String courierName;
@override final  String courierService;
@override final  String etd;
@override final  String? trackingNumber;
@override final  ShipmentStatus status;

/// Create a copy of OrderShipping
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderShippingCopyWith<_OrderShipping> get copyWith => __$OrderShippingCopyWithImpl<_OrderShipping>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderShippingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderShipping&&(identical(other.courierCode, courierCode) || other.courierCode == courierCode)&&(identical(other.courierName, courierName) || other.courierName == courierName)&&(identical(other.courierService, courierService) || other.courierService == courierService)&&(identical(other.etd, etd) || other.etd == etd)&&(identical(other.trackingNumber, trackingNumber) || other.trackingNumber == trackingNumber)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,courierCode,courierName,courierService,etd,trackingNumber,status);

@override
String toString() {
  return 'OrderShipping(courierCode: $courierCode, courierName: $courierName, courierService: $courierService, etd: $etd, trackingNumber: $trackingNumber, status: $status)';
}


}

/// @nodoc
abstract mixin class _$OrderShippingCopyWith<$Res> implements $OrderShippingCopyWith<$Res> {
  factory _$OrderShippingCopyWith(_OrderShipping value, $Res Function(_OrderShipping) _then) = __$OrderShippingCopyWithImpl;
@override @useResult
$Res call({
 String courierCode, String courierName, String courierService, String etd, String? trackingNumber, ShipmentStatus status
});




}
/// @nodoc
class __$OrderShippingCopyWithImpl<$Res>
    implements _$OrderShippingCopyWith<$Res> {
  __$OrderShippingCopyWithImpl(this._self, this._then);

  final _OrderShipping _self;
  final $Res Function(_OrderShipping) _then;

/// Create a copy of OrderShipping
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? courierCode = null,Object? courierName = null,Object? courierService = null,Object? etd = null,Object? trackingNumber = freezed,Object? status = null,}) {
  return _then(_OrderShipping(
courierCode: null == courierCode ? _self.courierCode : courierCode // ignore: cast_nullable_to_non_nullable
as String,courierName: null == courierName ? _self.courierName : courierName // ignore: cast_nullable_to_non_nullable
as String,courierService: null == courierService ? _self.courierService : courierService // ignore: cast_nullable_to_non_nullable
as String,etd: null == etd ? _self.etd : etd // ignore: cast_nullable_to_non_nullable
as String,trackingNumber: freezed == trackingNumber ? _self.trackingNumber : trackingNumber // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ShipmentStatus,
  ));
}


}


/// @nodoc
mixin _$OrderItem {

 int get variantId; int get productId; String get name; String get slug; int get price; int get quantity; int get weight; String get imageKey; List<OrderItemOption> get options;
/// Create a copy of OrderItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderItemCopyWith<OrderItem> get copyWith => _$OrderItemCopyWithImpl<OrderItem>(this as OrderItem, _$identity);

  /// Serializes this OrderItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderItem&&(identical(other.variantId, variantId) || other.variantId == variantId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.price, price) || other.price == price)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.imageKey, imageKey) || other.imageKey == imageKey)&&const DeepCollectionEquality().equals(other.options, options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,variantId,productId,name,slug,price,quantity,weight,imageKey,const DeepCollectionEquality().hash(options));

@override
String toString() {
  return 'OrderItem(variantId: $variantId, productId: $productId, name: $name, slug: $slug, price: $price, quantity: $quantity, weight: $weight, imageKey: $imageKey, options: $options)';
}


}

/// @nodoc
abstract mixin class $OrderItemCopyWith<$Res>  {
  factory $OrderItemCopyWith(OrderItem value, $Res Function(OrderItem) _then) = _$OrderItemCopyWithImpl;
@useResult
$Res call({
 int variantId, int productId, String name, String slug, int price, int quantity, int weight, String imageKey, List<OrderItemOption> options
});




}
/// @nodoc
class _$OrderItemCopyWithImpl<$Res>
    implements $OrderItemCopyWith<$Res> {
  _$OrderItemCopyWithImpl(this._self, this._then);

  final OrderItem _self;
  final $Res Function(OrderItem) _then;

/// Create a copy of OrderItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? variantId = null,Object? productId = null,Object? name = null,Object? slug = null,Object? price = null,Object? quantity = null,Object? weight = null,Object? imageKey = null,Object? options = null,}) {
  return _then(_self.copyWith(
variantId: null == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as int,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,imageKey: null == imageKey ? _self.imageKey : imageKey // ignore: cast_nullable_to_non_nullable
as String,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<OrderItemOption>,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderItem].
extension OrderItemPatterns on OrderItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderItem value)  $default,){
final _that = this;
switch (_that) {
case _OrderItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderItem value)?  $default,){
final _that = this;
switch (_that) {
case _OrderItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int variantId,  int productId,  String name,  String slug,  int price,  int quantity,  int weight,  String imageKey,  List<OrderItemOption> options)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderItem() when $default != null:
return $default(_that.variantId,_that.productId,_that.name,_that.slug,_that.price,_that.quantity,_that.weight,_that.imageKey,_that.options);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int variantId,  int productId,  String name,  String slug,  int price,  int quantity,  int weight,  String imageKey,  List<OrderItemOption> options)  $default,) {final _that = this;
switch (_that) {
case _OrderItem():
return $default(_that.variantId,_that.productId,_that.name,_that.slug,_that.price,_that.quantity,_that.weight,_that.imageKey,_that.options);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int variantId,  int productId,  String name,  String slug,  int price,  int quantity,  int weight,  String imageKey,  List<OrderItemOption> options)?  $default,) {final _that = this;
switch (_that) {
case _OrderItem() when $default != null:
return $default(_that.variantId,_that.productId,_that.name,_that.slug,_that.price,_that.quantity,_that.weight,_that.imageKey,_that.options);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderItem implements OrderItem {
  const _OrderItem({required this.variantId, required this.productId, required this.name, required this.slug, required this.price, required this.quantity, required this.weight, required this.imageKey, required final  List<OrderItemOption> options}): _options = options;
  factory _OrderItem.fromJson(Map<String, dynamic> json) => _$OrderItemFromJson(json);

@override final  int variantId;
@override final  int productId;
@override final  String name;
@override final  String slug;
@override final  int price;
@override final  int quantity;
@override final  int weight;
@override final  String imageKey;
 final  List<OrderItemOption> _options;
@override List<OrderItemOption> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}


/// Create a copy of OrderItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderItemCopyWith<_OrderItem> get copyWith => __$OrderItemCopyWithImpl<_OrderItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderItem&&(identical(other.variantId, variantId) || other.variantId == variantId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.price, price) || other.price == price)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.imageKey, imageKey) || other.imageKey == imageKey)&&const DeepCollectionEquality().equals(other._options, _options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,variantId,productId,name,slug,price,quantity,weight,imageKey,const DeepCollectionEquality().hash(_options));

@override
String toString() {
  return 'OrderItem(variantId: $variantId, productId: $productId, name: $name, slug: $slug, price: $price, quantity: $quantity, weight: $weight, imageKey: $imageKey, options: $options)';
}


}

/// @nodoc
abstract mixin class _$OrderItemCopyWith<$Res> implements $OrderItemCopyWith<$Res> {
  factory _$OrderItemCopyWith(_OrderItem value, $Res Function(_OrderItem) _then) = __$OrderItemCopyWithImpl;
@override @useResult
$Res call({
 int variantId, int productId, String name, String slug, int price, int quantity, int weight, String imageKey, List<OrderItemOption> options
});




}
/// @nodoc
class __$OrderItemCopyWithImpl<$Res>
    implements _$OrderItemCopyWith<$Res> {
  __$OrderItemCopyWithImpl(this._self, this._then);

  final _OrderItem _self;
  final $Res Function(_OrderItem) _then;

/// Create a copy of OrderItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? variantId = null,Object? productId = null,Object? name = null,Object? slug = null,Object? price = null,Object? quantity = null,Object? weight = null,Object? imageKey = null,Object? options = null,}) {
  return _then(_OrderItem(
variantId: null == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as int,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,imageKey: null == imageKey ? _self.imageKey : imageKey // ignore: cast_nullable_to_non_nullable
as String,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<OrderItemOption>,
  ));
}


}


/// @nodoc
mixin _$OrderItemOption {

 String get dimension; String get value;
/// Create a copy of OrderItemOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderItemOptionCopyWith<OrderItemOption> get copyWith => _$OrderItemOptionCopyWithImpl<OrderItemOption>(this as OrderItemOption, _$identity);

  /// Serializes this OrderItemOption to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderItemOption&&(identical(other.dimension, dimension) || other.dimension == dimension)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dimension,value);

@override
String toString() {
  return 'OrderItemOption(dimension: $dimension, value: $value)';
}


}

/// @nodoc
abstract mixin class $OrderItemOptionCopyWith<$Res>  {
  factory $OrderItemOptionCopyWith(OrderItemOption value, $Res Function(OrderItemOption) _then) = _$OrderItemOptionCopyWithImpl;
@useResult
$Res call({
 String dimension, String value
});




}
/// @nodoc
class _$OrderItemOptionCopyWithImpl<$Res>
    implements $OrderItemOptionCopyWith<$Res> {
  _$OrderItemOptionCopyWithImpl(this._self, this._then);

  final OrderItemOption _self;
  final $Res Function(OrderItemOption) _then;

/// Create a copy of OrderItemOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dimension = null,Object? value = null,}) {
  return _then(_self.copyWith(
dimension: null == dimension ? _self.dimension : dimension // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderItemOption].
extension OrderItemOptionPatterns on OrderItemOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderItemOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderItemOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderItemOption value)  $default,){
final _that = this;
switch (_that) {
case _OrderItemOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderItemOption value)?  $default,){
final _that = this;
switch (_that) {
case _OrderItemOption() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String dimension,  String value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderItemOption() when $default != null:
return $default(_that.dimension,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String dimension,  String value)  $default,) {final _that = this;
switch (_that) {
case _OrderItemOption():
return $default(_that.dimension,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String dimension,  String value)?  $default,) {final _that = this;
switch (_that) {
case _OrderItemOption() when $default != null:
return $default(_that.dimension,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderItemOption implements OrderItemOption {
  const _OrderItemOption({required this.dimension, required this.value});
  factory _OrderItemOption.fromJson(Map<String, dynamic> json) => _$OrderItemOptionFromJson(json);

@override final  String dimension;
@override final  String value;

/// Create a copy of OrderItemOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderItemOptionCopyWith<_OrderItemOption> get copyWith => __$OrderItemOptionCopyWithImpl<_OrderItemOption>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderItemOptionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderItemOption&&(identical(other.dimension, dimension) || other.dimension == dimension)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dimension,value);

@override
String toString() {
  return 'OrderItemOption(dimension: $dimension, value: $value)';
}


}

/// @nodoc
abstract mixin class _$OrderItemOptionCopyWith<$Res> implements $OrderItemOptionCopyWith<$Res> {
  factory _$OrderItemOptionCopyWith(_OrderItemOption value, $Res Function(_OrderItemOption) _then) = __$OrderItemOptionCopyWithImpl;
@override @useResult
$Res call({
 String dimension, String value
});




}
/// @nodoc
class __$OrderItemOptionCopyWithImpl<$Res>
    implements _$OrderItemOptionCopyWith<$Res> {
  __$OrderItemOptionCopyWithImpl(this._self, this._then);

  final _OrderItemOption _self;
  final $Res Function(_OrderItemOption) _then;

/// Create a copy of OrderItemOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dimension = null,Object? value = null,}) {
  return _then(_OrderItemOption(
dimension: null == dimension ? _self.dimension : dimension // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$OrderWarehouseOrigin {

 String get name; String get province; String get city; String get district; String get postalCode;
/// Create a copy of OrderWarehouseOrigin
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderWarehouseOriginCopyWith<OrderWarehouseOrigin> get copyWith => _$OrderWarehouseOriginCopyWithImpl<OrderWarehouseOrigin>(this as OrderWarehouseOrigin, _$identity);

  /// Serializes this OrderWarehouseOrigin to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderWarehouseOrigin&&(identical(other.name, name) || other.name == name)&&(identical(other.province, province) || other.province == province)&&(identical(other.city, city) || other.city == city)&&(identical(other.district, district) || other.district == district)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,province,city,district,postalCode);

@override
String toString() {
  return 'OrderWarehouseOrigin(name: $name, province: $province, city: $city, district: $district, postalCode: $postalCode)';
}


}

/// @nodoc
abstract mixin class $OrderWarehouseOriginCopyWith<$Res>  {
  factory $OrderWarehouseOriginCopyWith(OrderWarehouseOrigin value, $Res Function(OrderWarehouseOrigin) _then) = _$OrderWarehouseOriginCopyWithImpl;
@useResult
$Res call({
 String name, String province, String city, String district, String postalCode
});




}
/// @nodoc
class _$OrderWarehouseOriginCopyWithImpl<$Res>
    implements $OrderWarehouseOriginCopyWith<$Res> {
  _$OrderWarehouseOriginCopyWithImpl(this._self, this._then);

  final OrderWarehouseOrigin _self;
  final $Res Function(OrderWarehouseOrigin) _then;

/// Create a copy of OrderWarehouseOrigin
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? province = null,Object? city = null,Object? district = null,Object? postalCode = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,province: null == province ? _self.province : province // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,district: null == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String,postalCode: null == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderWarehouseOrigin].
extension OrderWarehouseOriginPatterns on OrderWarehouseOrigin {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderWarehouseOrigin value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderWarehouseOrigin() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderWarehouseOrigin value)  $default,){
final _that = this;
switch (_that) {
case _OrderWarehouseOrigin():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderWarehouseOrigin value)?  $default,){
final _that = this;
switch (_that) {
case _OrderWarehouseOrigin() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String province,  String city,  String district,  String postalCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderWarehouseOrigin() when $default != null:
return $default(_that.name,_that.province,_that.city,_that.district,_that.postalCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String province,  String city,  String district,  String postalCode)  $default,) {final _that = this;
switch (_that) {
case _OrderWarehouseOrigin():
return $default(_that.name,_that.province,_that.city,_that.district,_that.postalCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String province,  String city,  String district,  String postalCode)?  $default,) {final _that = this;
switch (_that) {
case _OrderWarehouseOrigin() when $default != null:
return $default(_that.name,_that.province,_that.city,_that.district,_that.postalCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderWarehouseOrigin implements OrderWarehouseOrigin {
  const _OrderWarehouseOrigin({required this.name, required this.province, required this.city, required this.district, required this.postalCode});
  factory _OrderWarehouseOrigin.fromJson(Map<String, dynamic> json) => _$OrderWarehouseOriginFromJson(json);

@override final  String name;
@override final  String province;
@override final  String city;
@override final  String district;
@override final  String postalCode;

/// Create a copy of OrderWarehouseOrigin
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderWarehouseOriginCopyWith<_OrderWarehouseOrigin> get copyWith => __$OrderWarehouseOriginCopyWithImpl<_OrderWarehouseOrigin>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderWarehouseOriginToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderWarehouseOrigin&&(identical(other.name, name) || other.name == name)&&(identical(other.province, province) || other.province == province)&&(identical(other.city, city) || other.city == city)&&(identical(other.district, district) || other.district == district)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,province,city,district,postalCode);

@override
String toString() {
  return 'OrderWarehouseOrigin(name: $name, province: $province, city: $city, district: $district, postalCode: $postalCode)';
}


}

/// @nodoc
abstract mixin class _$OrderWarehouseOriginCopyWith<$Res> implements $OrderWarehouseOriginCopyWith<$Res> {
  factory _$OrderWarehouseOriginCopyWith(_OrderWarehouseOrigin value, $Res Function(_OrderWarehouseOrigin) _then) = __$OrderWarehouseOriginCopyWithImpl;
@override @useResult
$Res call({
 String name, String province, String city, String district, String postalCode
});




}
/// @nodoc
class __$OrderWarehouseOriginCopyWithImpl<$Res>
    implements _$OrderWarehouseOriginCopyWith<$Res> {
  __$OrderWarehouseOriginCopyWithImpl(this._self, this._then);

  final _OrderWarehouseOrigin _self;
  final $Res Function(_OrderWarehouseOrigin) _then;

/// Create a copy of OrderWarehouseOrigin
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? province = null,Object? city = null,Object? district = null,Object? postalCode = null,}) {
  return _then(_OrderWarehouseOrigin(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,province: null == province ? _self.province : province // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,district: null == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String,postalCode: null == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$OrderTimeline {

 String get key; String get label; String? get date; bool get isCompleted; bool get isCurrent;
/// Create a copy of OrderTimeline
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderTimelineCopyWith<OrderTimeline> get copyWith => _$OrderTimelineCopyWithImpl<OrderTimeline>(this as OrderTimeline, _$identity);

  /// Serializes this OrderTimeline to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderTimeline&&(identical(other.key, key) || other.key == key)&&(identical(other.label, label) || other.label == label)&&(identical(other.date, date) || other.date == date)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.isCurrent, isCurrent) || other.isCurrent == isCurrent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,label,date,isCompleted,isCurrent);

@override
String toString() {
  return 'OrderTimeline(key: $key, label: $label, date: $date, isCompleted: $isCompleted, isCurrent: $isCurrent)';
}


}

/// @nodoc
abstract mixin class $OrderTimelineCopyWith<$Res>  {
  factory $OrderTimelineCopyWith(OrderTimeline value, $Res Function(OrderTimeline) _then) = _$OrderTimelineCopyWithImpl;
@useResult
$Res call({
 String key, String label, String? date, bool isCompleted, bool isCurrent
});




}
/// @nodoc
class _$OrderTimelineCopyWithImpl<$Res>
    implements $OrderTimelineCopyWith<$Res> {
  _$OrderTimelineCopyWithImpl(this._self, this._then);

  final OrderTimeline _self;
  final $Res Function(OrderTimeline) _then;

/// Create a copy of OrderTimeline
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? key = null,Object? label = null,Object? date = freezed,Object? isCompleted = null,Object? isCurrent = null,}) {
  return _then(_self.copyWith(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,isCurrent: null == isCurrent ? _self.isCurrent : isCurrent // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderTimeline].
extension OrderTimelinePatterns on OrderTimeline {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderTimeline value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderTimeline() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderTimeline value)  $default,){
final _that = this;
switch (_that) {
case _OrderTimeline():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderTimeline value)?  $default,){
final _that = this;
switch (_that) {
case _OrderTimeline() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String key,  String label,  String? date,  bool isCompleted,  bool isCurrent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderTimeline() when $default != null:
return $default(_that.key,_that.label,_that.date,_that.isCompleted,_that.isCurrent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String key,  String label,  String? date,  bool isCompleted,  bool isCurrent)  $default,) {final _that = this;
switch (_that) {
case _OrderTimeline():
return $default(_that.key,_that.label,_that.date,_that.isCompleted,_that.isCurrent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String key,  String label,  String? date,  bool isCompleted,  bool isCurrent)?  $default,) {final _that = this;
switch (_that) {
case _OrderTimeline() when $default != null:
return $default(_that.key,_that.label,_that.date,_that.isCompleted,_that.isCurrent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderTimeline implements OrderTimeline {
  const _OrderTimeline({required this.key, required this.label, required this.date, required this.isCompleted, required this.isCurrent});
  factory _OrderTimeline.fromJson(Map<String, dynamic> json) => _$OrderTimelineFromJson(json);

@override final  String key;
@override final  String label;
@override final  String? date;
@override final  bool isCompleted;
@override final  bool isCurrent;

/// Create a copy of OrderTimeline
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderTimelineCopyWith<_OrderTimeline> get copyWith => __$OrderTimelineCopyWithImpl<_OrderTimeline>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderTimelineToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderTimeline&&(identical(other.key, key) || other.key == key)&&(identical(other.label, label) || other.label == label)&&(identical(other.date, date) || other.date == date)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.isCurrent, isCurrent) || other.isCurrent == isCurrent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,label,date,isCompleted,isCurrent);

@override
String toString() {
  return 'OrderTimeline(key: $key, label: $label, date: $date, isCompleted: $isCompleted, isCurrent: $isCurrent)';
}


}

/// @nodoc
abstract mixin class _$OrderTimelineCopyWith<$Res> implements $OrderTimelineCopyWith<$Res> {
  factory _$OrderTimelineCopyWith(_OrderTimeline value, $Res Function(_OrderTimeline) _then) = __$OrderTimelineCopyWithImpl;
@override @useResult
$Res call({
 String key, String label, String? date, bool isCompleted, bool isCurrent
});




}
/// @nodoc
class __$OrderTimelineCopyWithImpl<$Res>
    implements _$OrderTimelineCopyWith<$Res> {
  __$OrderTimelineCopyWithImpl(this._self, this._then);

  final _OrderTimeline _self;
  final $Res Function(_OrderTimeline) _then;

/// Create a copy of OrderTimeline
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? key = null,Object? label = null,Object? date = freezed,Object? isCompleted = null,Object? isCurrent = null,}) {
  return _then(_OrderTimeline(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,isCurrent: null == isCurrent ? _self.isCurrent : isCurrent // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
