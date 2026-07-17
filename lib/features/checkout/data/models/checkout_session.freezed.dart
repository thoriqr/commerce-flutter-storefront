// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CheckoutSession {

 int get sessionId; String get expiresAt; int get subtotal; int get shippingCost; int get total; int get totalWeight; CheckoutUserAddress? get address; String? get courierCode; String? get courierName; String? get courierService; String? get shippingEtd; List<CheckoutItem> get items; bool get canPlaceOrder; CheckoutBlockReason? get reason;
/// Create a copy of CheckoutSession
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutSessionCopyWith<CheckoutSession> get copyWith => _$CheckoutSessionCopyWithImpl<CheckoutSession>(this as CheckoutSession, _$identity);

  /// Serializes this CheckoutSession to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutSession&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.shippingCost, shippingCost) || other.shippingCost == shippingCost)&&(identical(other.total, total) || other.total == total)&&(identical(other.totalWeight, totalWeight) || other.totalWeight == totalWeight)&&(identical(other.address, address) || other.address == address)&&(identical(other.courierCode, courierCode) || other.courierCode == courierCode)&&(identical(other.courierName, courierName) || other.courierName == courierName)&&(identical(other.courierService, courierService) || other.courierService == courierService)&&(identical(other.shippingEtd, shippingEtd) || other.shippingEtd == shippingEtd)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.canPlaceOrder, canPlaceOrder) || other.canPlaceOrder == canPlaceOrder)&&(identical(other.reason, reason) || other.reason == reason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sessionId,expiresAt,subtotal,shippingCost,total,totalWeight,address,courierCode,courierName,courierService,shippingEtd,const DeepCollectionEquality().hash(items),canPlaceOrder,reason);

@override
String toString() {
  return 'CheckoutSession(sessionId: $sessionId, expiresAt: $expiresAt, subtotal: $subtotal, shippingCost: $shippingCost, total: $total, totalWeight: $totalWeight, address: $address, courierCode: $courierCode, courierName: $courierName, courierService: $courierService, shippingEtd: $shippingEtd, items: $items, canPlaceOrder: $canPlaceOrder, reason: $reason)';
}


}

/// @nodoc
abstract mixin class $CheckoutSessionCopyWith<$Res>  {
  factory $CheckoutSessionCopyWith(CheckoutSession value, $Res Function(CheckoutSession) _then) = _$CheckoutSessionCopyWithImpl;
@useResult
$Res call({
 int sessionId, String expiresAt, int subtotal, int shippingCost, int total, int totalWeight, CheckoutUserAddress? address, String? courierCode, String? courierName, String? courierService, String? shippingEtd, List<CheckoutItem> items, bool canPlaceOrder, CheckoutBlockReason? reason
});


$CheckoutUserAddressCopyWith<$Res>? get address;

}
/// @nodoc
class _$CheckoutSessionCopyWithImpl<$Res>
    implements $CheckoutSessionCopyWith<$Res> {
  _$CheckoutSessionCopyWithImpl(this._self, this._then);

  final CheckoutSession _self;
  final $Res Function(CheckoutSession) _then;

/// Create a copy of CheckoutSession
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sessionId = null,Object? expiresAt = null,Object? subtotal = null,Object? shippingCost = null,Object? total = null,Object? totalWeight = null,Object? address = freezed,Object? courierCode = freezed,Object? courierName = freezed,Object? courierService = freezed,Object? shippingEtd = freezed,Object? items = null,Object? canPlaceOrder = null,Object? reason = freezed,}) {
  return _then(_self.copyWith(
sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as int,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as int,shippingCost: null == shippingCost ? _self.shippingCost : shippingCost // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,totalWeight: null == totalWeight ? _self.totalWeight : totalWeight // ignore: cast_nullable_to_non_nullable
as int,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as CheckoutUserAddress?,courierCode: freezed == courierCode ? _self.courierCode : courierCode // ignore: cast_nullable_to_non_nullable
as String?,courierName: freezed == courierName ? _self.courierName : courierName // ignore: cast_nullable_to_non_nullable
as String?,courierService: freezed == courierService ? _self.courierService : courierService // ignore: cast_nullable_to_non_nullable
as String?,shippingEtd: freezed == shippingEtd ? _self.shippingEtd : shippingEtd // ignore: cast_nullable_to_non_nullable
as String?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<CheckoutItem>,canPlaceOrder: null == canPlaceOrder ? _self.canPlaceOrder : canPlaceOrder // ignore: cast_nullable_to_non_nullable
as bool,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as CheckoutBlockReason?,
  ));
}
/// Create a copy of CheckoutSession
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CheckoutUserAddressCopyWith<$Res>? get address {
    if (_self.address == null) {
    return null;
  }

  return $CheckoutUserAddressCopyWith<$Res>(_self.address!, (value) {
    return _then(_self.copyWith(address: value));
  });
}
}


/// Adds pattern-matching-related methods to [CheckoutSession].
extension CheckoutSessionPatterns on CheckoutSession {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckoutSession value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckoutSession() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckoutSession value)  $default,){
final _that = this;
switch (_that) {
case _CheckoutSession():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckoutSession value)?  $default,){
final _that = this;
switch (_that) {
case _CheckoutSession() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int sessionId,  String expiresAt,  int subtotal,  int shippingCost,  int total,  int totalWeight,  CheckoutUserAddress? address,  String? courierCode,  String? courierName,  String? courierService,  String? shippingEtd,  List<CheckoutItem> items,  bool canPlaceOrder,  CheckoutBlockReason? reason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckoutSession() when $default != null:
return $default(_that.sessionId,_that.expiresAt,_that.subtotal,_that.shippingCost,_that.total,_that.totalWeight,_that.address,_that.courierCode,_that.courierName,_that.courierService,_that.shippingEtd,_that.items,_that.canPlaceOrder,_that.reason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int sessionId,  String expiresAt,  int subtotal,  int shippingCost,  int total,  int totalWeight,  CheckoutUserAddress? address,  String? courierCode,  String? courierName,  String? courierService,  String? shippingEtd,  List<CheckoutItem> items,  bool canPlaceOrder,  CheckoutBlockReason? reason)  $default,) {final _that = this;
switch (_that) {
case _CheckoutSession():
return $default(_that.sessionId,_that.expiresAt,_that.subtotal,_that.shippingCost,_that.total,_that.totalWeight,_that.address,_that.courierCode,_that.courierName,_that.courierService,_that.shippingEtd,_that.items,_that.canPlaceOrder,_that.reason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int sessionId,  String expiresAt,  int subtotal,  int shippingCost,  int total,  int totalWeight,  CheckoutUserAddress? address,  String? courierCode,  String? courierName,  String? courierService,  String? shippingEtd,  List<CheckoutItem> items,  bool canPlaceOrder,  CheckoutBlockReason? reason)?  $default,) {final _that = this;
switch (_that) {
case _CheckoutSession() when $default != null:
return $default(_that.sessionId,_that.expiresAt,_that.subtotal,_that.shippingCost,_that.total,_that.totalWeight,_that.address,_that.courierCode,_that.courierName,_that.courierService,_that.shippingEtd,_that.items,_that.canPlaceOrder,_that.reason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CheckoutSession implements CheckoutSession {
  const _CheckoutSession({required this.sessionId, required this.expiresAt, required this.subtotal, required this.shippingCost, required this.total, required this.totalWeight, required this.address, required this.courierCode, required this.courierName, required this.courierService, required this.shippingEtd, required final  List<CheckoutItem> items, required this.canPlaceOrder, required this.reason}): _items = items;
  factory _CheckoutSession.fromJson(Map<String, dynamic> json) => _$CheckoutSessionFromJson(json);

@override final  int sessionId;
@override final  String expiresAt;
@override final  int subtotal;
@override final  int shippingCost;
@override final  int total;
@override final  int totalWeight;
@override final  CheckoutUserAddress? address;
@override final  String? courierCode;
@override final  String? courierName;
@override final  String? courierService;
@override final  String? shippingEtd;
 final  List<CheckoutItem> _items;
@override List<CheckoutItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  bool canPlaceOrder;
@override final  CheckoutBlockReason? reason;

/// Create a copy of CheckoutSession
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutSessionCopyWith<_CheckoutSession> get copyWith => __$CheckoutSessionCopyWithImpl<_CheckoutSession>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckoutSessionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutSession&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.shippingCost, shippingCost) || other.shippingCost == shippingCost)&&(identical(other.total, total) || other.total == total)&&(identical(other.totalWeight, totalWeight) || other.totalWeight == totalWeight)&&(identical(other.address, address) || other.address == address)&&(identical(other.courierCode, courierCode) || other.courierCode == courierCode)&&(identical(other.courierName, courierName) || other.courierName == courierName)&&(identical(other.courierService, courierService) || other.courierService == courierService)&&(identical(other.shippingEtd, shippingEtd) || other.shippingEtd == shippingEtd)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.canPlaceOrder, canPlaceOrder) || other.canPlaceOrder == canPlaceOrder)&&(identical(other.reason, reason) || other.reason == reason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sessionId,expiresAt,subtotal,shippingCost,total,totalWeight,address,courierCode,courierName,courierService,shippingEtd,const DeepCollectionEquality().hash(_items),canPlaceOrder,reason);

@override
String toString() {
  return 'CheckoutSession(sessionId: $sessionId, expiresAt: $expiresAt, subtotal: $subtotal, shippingCost: $shippingCost, total: $total, totalWeight: $totalWeight, address: $address, courierCode: $courierCode, courierName: $courierName, courierService: $courierService, shippingEtd: $shippingEtd, items: $items, canPlaceOrder: $canPlaceOrder, reason: $reason)';
}


}

/// @nodoc
abstract mixin class _$CheckoutSessionCopyWith<$Res> implements $CheckoutSessionCopyWith<$Res> {
  factory _$CheckoutSessionCopyWith(_CheckoutSession value, $Res Function(_CheckoutSession) _then) = __$CheckoutSessionCopyWithImpl;
@override @useResult
$Res call({
 int sessionId, String expiresAt, int subtotal, int shippingCost, int total, int totalWeight, CheckoutUserAddress? address, String? courierCode, String? courierName, String? courierService, String? shippingEtd, List<CheckoutItem> items, bool canPlaceOrder, CheckoutBlockReason? reason
});


@override $CheckoutUserAddressCopyWith<$Res>? get address;

}
/// @nodoc
class __$CheckoutSessionCopyWithImpl<$Res>
    implements _$CheckoutSessionCopyWith<$Res> {
  __$CheckoutSessionCopyWithImpl(this._self, this._then);

  final _CheckoutSession _self;
  final $Res Function(_CheckoutSession) _then;

/// Create a copy of CheckoutSession
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sessionId = null,Object? expiresAt = null,Object? subtotal = null,Object? shippingCost = null,Object? total = null,Object? totalWeight = null,Object? address = freezed,Object? courierCode = freezed,Object? courierName = freezed,Object? courierService = freezed,Object? shippingEtd = freezed,Object? items = null,Object? canPlaceOrder = null,Object? reason = freezed,}) {
  return _then(_CheckoutSession(
sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as int,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as int,shippingCost: null == shippingCost ? _self.shippingCost : shippingCost // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,totalWeight: null == totalWeight ? _self.totalWeight : totalWeight // ignore: cast_nullable_to_non_nullable
as int,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as CheckoutUserAddress?,courierCode: freezed == courierCode ? _self.courierCode : courierCode // ignore: cast_nullable_to_non_nullable
as String?,courierName: freezed == courierName ? _self.courierName : courierName // ignore: cast_nullable_to_non_nullable
as String?,courierService: freezed == courierService ? _self.courierService : courierService // ignore: cast_nullable_to_non_nullable
as String?,shippingEtd: freezed == shippingEtd ? _self.shippingEtd : shippingEtd // ignore: cast_nullable_to_non_nullable
as String?,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<CheckoutItem>,canPlaceOrder: null == canPlaceOrder ? _self.canPlaceOrder : canPlaceOrder // ignore: cast_nullable_to_non_nullable
as bool,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as CheckoutBlockReason?,
  ));
}

/// Create a copy of CheckoutSession
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CheckoutUserAddressCopyWith<$Res>? get address {
    if (_self.address == null) {
    return null;
  }

  return $CheckoutUserAddressCopyWith<$Res>(_self.address!, (value) {
    return _then(_self.copyWith(address: value));
  });
}
}


/// @nodoc
mixin _$CheckoutUserAddress {

 int? get id; String get recipientName; String get phone; String get addressLine; String get provinceName; String get cityName; String get districtName; String get postalCode;
/// Create a copy of CheckoutUserAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutUserAddressCopyWith<CheckoutUserAddress> get copyWith => _$CheckoutUserAddressCopyWithImpl<CheckoutUserAddress>(this as CheckoutUserAddress, _$identity);

  /// Serializes this CheckoutUserAddress to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutUserAddress&&(identical(other.id, id) || other.id == id)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.addressLine, addressLine) || other.addressLine == addressLine)&&(identical(other.provinceName, provinceName) || other.provinceName == provinceName)&&(identical(other.cityName, cityName) || other.cityName == cityName)&&(identical(other.districtName, districtName) || other.districtName == districtName)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,recipientName,phone,addressLine,provinceName,cityName,districtName,postalCode);

@override
String toString() {
  return 'CheckoutUserAddress(id: $id, recipientName: $recipientName, phone: $phone, addressLine: $addressLine, provinceName: $provinceName, cityName: $cityName, districtName: $districtName, postalCode: $postalCode)';
}


}

/// @nodoc
abstract mixin class $CheckoutUserAddressCopyWith<$Res>  {
  factory $CheckoutUserAddressCopyWith(CheckoutUserAddress value, $Res Function(CheckoutUserAddress) _then) = _$CheckoutUserAddressCopyWithImpl;
@useResult
$Res call({
 int? id, String recipientName, String phone, String addressLine, String provinceName, String cityName, String districtName, String postalCode
});




}
/// @nodoc
class _$CheckoutUserAddressCopyWithImpl<$Res>
    implements $CheckoutUserAddressCopyWith<$Res> {
  _$CheckoutUserAddressCopyWithImpl(this._self, this._then);

  final CheckoutUserAddress _self;
  final $Res Function(CheckoutUserAddress) _then;

/// Create a copy of CheckoutUserAddress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? recipientName = null,Object? phone = null,Object? addressLine = null,Object? provinceName = null,Object? cityName = null,Object? districtName = null,Object? postalCode = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,recipientName: null == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
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


/// Adds pattern-matching-related methods to [CheckoutUserAddress].
extension CheckoutUserAddressPatterns on CheckoutUserAddress {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckoutUserAddress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckoutUserAddress() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckoutUserAddress value)  $default,){
final _that = this;
switch (_that) {
case _CheckoutUserAddress():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckoutUserAddress value)?  $default,){
final _that = this;
switch (_that) {
case _CheckoutUserAddress() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String recipientName,  String phone,  String addressLine,  String provinceName,  String cityName,  String districtName,  String postalCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckoutUserAddress() when $default != null:
return $default(_that.id,_that.recipientName,_that.phone,_that.addressLine,_that.provinceName,_that.cityName,_that.districtName,_that.postalCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String recipientName,  String phone,  String addressLine,  String provinceName,  String cityName,  String districtName,  String postalCode)  $default,) {final _that = this;
switch (_that) {
case _CheckoutUserAddress():
return $default(_that.id,_that.recipientName,_that.phone,_that.addressLine,_that.provinceName,_that.cityName,_that.districtName,_that.postalCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String recipientName,  String phone,  String addressLine,  String provinceName,  String cityName,  String districtName,  String postalCode)?  $default,) {final _that = this;
switch (_that) {
case _CheckoutUserAddress() when $default != null:
return $default(_that.id,_that.recipientName,_that.phone,_that.addressLine,_that.provinceName,_that.cityName,_that.districtName,_that.postalCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CheckoutUserAddress implements CheckoutUserAddress {
  const _CheckoutUserAddress({required this.id, required this.recipientName, required this.phone, required this.addressLine, required this.provinceName, required this.cityName, required this.districtName, required this.postalCode});
  factory _CheckoutUserAddress.fromJson(Map<String, dynamic> json) => _$CheckoutUserAddressFromJson(json);

@override final  int? id;
@override final  String recipientName;
@override final  String phone;
@override final  String addressLine;
@override final  String provinceName;
@override final  String cityName;
@override final  String districtName;
@override final  String postalCode;

/// Create a copy of CheckoutUserAddress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutUserAddressCopyWith<_CheckoutUserAddress> get copyWith => __$CheckoutUserAddressCopyWithImpl<_CheckoutUserAddress>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckoutUserAddressToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutUserAddress&&(identical(other.id, id) || other.id == id)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.addressLine, addressLine) || other.addressLine == addressLine)&&(identical(other.provinceName, provinceName) || other.provinceName == provinceName)&&(identical(other.cityName, cityName) || other.cityName == cityName)&&(identical(other.districtName, districtName) || other.districtName == districtName)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,recipientName,phone,addressLine,provinceName,cityName,districtName,postalCode);

@override
String toString() {
  return 'CheckoutUserAddress(id: $id, recipientName: $recipientName, phone: $phone, addressLine: $addressLine, provinceName: $provinceName, cityName: $cityName, districtName: $districtName, postalCode: $postalCode)';
}


}

/// @nodoc
abstract mixin class _$CheckoutUserAddressCopyWith<$Res> implements $CheckoutUserAddressCopyWith<$Res> {
  factory _$CheckoutUserAddressCopyWith(_CheckoutUserAddress value, $Res Function(_CheckoutUserAddress) _then) = __$CheckoutUserAddressCopyWithImpl;
@override @useResult
$Res call({
 int? id, String recipientName, String phone, String addressLine, String provinceName, String cityName, String districtName, String postalCode
});




}
/// @nodoc
class __$CheckoutUserAddressCopyWithImpl<$Res>
    implements _$CheckoutUserAddressCopyWith<$Res> {
  __$CheckoutUserAddressCopyWithImpl(this._self, this._then);

  final _CheckoutUserAddress _self;
  final $Res Function(_CheckoutUserAddress) _then;

/// Create a copy of CheckoutUserAddress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? recipientName = null,Object? phone = null,Object? addressLine = null,Object? provinceName = null,Object? cityName = null,Object? districtName = null,Object? postalCode = null,}) {
  return _then(_CheckoutUserAddress(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,recipientName: null == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
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
mixin _$CheckoutItem {

 int get variantId; int get productId; String get productName; String get slug; int get price; int get quantity; int get stock; int get weight; bool get isAvailable; String? get imageKey; CheckoutItemWarning? get warning; List<CheckoutItemOption> get options;
/// Create a copy of CheckoutItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutItemCopyWith<CheckoutItem> get copyWith => _$CheckoutItemCopyWithImpl<CheckoutItem>(this as CheckoutItem, _$identity);

  /// Serializes this CheckoutItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutItem&&(identical(other.variantId, variantId) || other.variantId == variantId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.price, price) || other.price == price)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.stock, stock) || other.stock == stock)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable)&&(identical(other.imageKey, imageKey) || other.imageKey == imageKey)&&(identical(other.warning, warning) || other.warning == warning)&&const DeepCollectionEquality().equals(other.options, options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,variantId,productId,productName,slug,price,quantity,stock,weight,isAvailable,imageKey,warning,const DeepCollectionEquality().hash(options));

@override
String toString() {
  return 'CheckoutItem(variantId: $variantId, productId: $productId, productName: $productName, slug: $slug, price: $price, quantity: $quantity, stock: $stock, weight: $weight, isAvailable: $isAvailable, imageKey: $imageKey, warning: $warning, options: $options)';
}


}

/// @nodoc
abstract mixin class $CheckoutItemCopyWith<$Res>  {
  factory $CheckoutItemCopyWith(CheckoutItem value, $Res Function(CheckoutItem) _then) = _$CheckoutItemCopyWithImpl;
@useResult
$Res call({
 int variantId, int productId, String productName, String slug, int price, int quantity, int stock, int weight, bool isAvailable, String? imageKey, CheckoutItemWarning? warning, List<CheckoutItemOption> options
});




}
/// @nodoc
class _$CheckoutItemCopyWithImpl<$Res>
    implements $CheckoutItemCopyWith<$Res> {
  _$CheckoutItemCopyWithImpl(this._self, this._then);

  final CheckoutItem _self;
  final $Res Function(CheckoutItem) _then;

/// Create a copy of CheckoutItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? variantId = null,Object? productId = null,Object? productName = null,Object? slug = null,Object? price = null,Object? quantity = null,Object? stock = null,Object? weight = null,Object? isAvailable = null,Object? imageKey = freezed,Object? warning = freezed,Object? options = null,}) {
  return _then(_self.copyWith(
variantId: null == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as int,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,imageKey: freezed == imageKey ? _self.imageKey : imageKey // ignore: cast_nullable_to_non_nullable
as String?,warning: freezed == warning ? _self.warning : warning // ignore: cast_nullable_to_non_nullable
as CheckoutItemWarning?,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<CheckoutItemOption>,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckoutItem].
extension CheckoutItemPatterns on CheckoutItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckoutItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckoutItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckoutItem value)  $default,){
final _that = this;
switch (_that) {
case _CheckoutItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckoutItem value)?  $default,){
final _that = this;
switch (_that) {
case _CheckoutItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int variantId,  int productId,  String productName,  String slug,  int price,  int quantity,  int stock,  int weight,  bool isAvailable,  String? imageKey,  CheckoutItemWarning? warning,  List<CheckoutItemOption> options)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckoutItem() when $default != null:
return $default(_that.variantId,_that.productId,_that.productName,_that.slug,_that.price,_that.quantity,_that.stock,_that.weight,_that.isAvailable,_that.imageKey,_that.warning,_that.options);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int variantId,  int productId,  String productName,  String slug,  int price,  int quantity,  int stock,  int weight,  bool isAvailable,  String? imageKey,  CheckoutItemWarning? warning,  List<CheckoutItemOption> options)  $default,) {final _that = this;
switch (_that) {
case _CheckoutItem():
return $default(_that.variantId,_that.productId,_that.productName,_that.slug,_that.price,_that.quantity,_that.stock,_that.weight,_that.isAvailable,_that.imageKey,_that.warning,_that.options);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int variantId,  int productId,  String productName,  String slug,  int price,  int quantity,  int stock,  int weight,  bool isAvailable,  String? imageKey,  CheckoutItemWarning? warning,  List<CheckoutItemOption> options)?  $default,) {final _that = this;
switch (_that) {
case _CheckoutItem() when $default != null:
return $default(_that.variantId,_that.productId,_that.productName,_that.slug,_that.price,_that.quantity,_that.stock,_that.weight,_that.isAvailable,_that.imageKey,_that.warning,_that.options);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CheckoutItem implements CheckoutItem {
  const _CheckoutItem({required this.variantId, required this.productId, required this.productName, required this.slug, required this.price, required this.quantity, required this.stock, required this.weight, required this.isAvailable, required this.imageKey, required this.warning, required final  List<CheckoutItemOption> options}): _options = options;
  factory _CheckoutItem.fromJson(Map<String, dynamic> json) => _$CheckoutItemFromJson(json);

@override final  int variantId;
@override final  int productId;
@override final  String productName;
@override final  String slug;
@override final  int price;
@override final  int quantity;
@override final  int stock;
@override final  int weight;
@override final  bool isAvailable;
@override final  String? imageKey;
@override final  CheckoutItemWarning? warning;
 final  List<CheckoutItemOption> _options;
@override List<CheckoutItemOption> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}


/// Create a copy of CheckoutItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutItemCopyWith<_CheckoutItem> get copyWith => __$CheckoutItemCopyWithImpl<_CheckoutItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckoutItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutItem&&(identical(other.variantId, variantId) || other.variantId == variantId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.price, price) || other.price == price)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.stock, stock) || other.stock == stock)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable)&&(identical(other.imageKey, imageKey) || other.imageKey == imageKey)&&(identical(other.warning, warning) || other.warning == warning)&&const DeepCollectionEquality().equals(other._options, _options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,variantId,productId,productName,slug,price,quantity,stock,weight,isAvailable,imageKey,warning,const DeepCollectionEquality().hash(_options));

@override
String toString() {
  return 'CheckoutItem(variantId: $variantId, productId: $productId, productName: $productName, slug: $slug, price: $price, quantity: $quantity, stock: $stock, weight: $weight, isAvailable: $isAvailable, imageKey: $imageKey, warning: $warning, options: $options)';
}


}

/// @nodoc
abstract mixin class _$CheckoutItemCopyWith<$Res> implements $CheckoutItemCopyWith<$Res> {
  factory _$CheckoutItemCopyWith(_CheckoutItem value, $Res Function(_CheckoutItem) _then) = __$CheckoutItemCopyWithImpl;
@override @useResult
$Res call({
 int variantId, int productId, String productName, String slug, int price, int quantity, int stock, int weight, bool isAvailable, String? imageKey, CheckoutItemWarning? warning, List<CheckoutItemOption> options
});




}
/// @nodoc
class __$CheckoutItemCopyWithImpl<$Res>
    implements _$CheckoutItemCopyWith<$Res> {
  __$CheckoutItemCopyWithImpl(this._self, this._then);

  final _CheckoutItem _self;
  final $Res Function(_CheckoutItem) _then;

/// Create a copy of CheckoutItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? variantId = null,Object? productId = null,Object? productName = null,Object? slug = null,Object? price = null,Object? quantity = null,Object? stock = null,Object? weight = null,Object? isAvailable = null,Object? imageKey = freezed,Object? warning = freezed,Object? options = null,}) {
  return _then(_CheckoutItem(
variantId: null == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as int,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,imageKey: freezed == imageKey ? _self.imageKey : imageKey // ignore: cast_nullable_to_non_nullable
as String?,warning: freezed == warning ? _self.warning : warning // ignore: cast_nullable_to_non_nullable
as CheckoutItemWarning?,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<CheckoutItemOption>,
  ));
}


}


/// @nodoc
mixin _$CheckoutItemOption {

 String get dimension; String get value;
/// Create a copy of CheckoutItemOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutItemOptionCopyWith<CheckoutItemOption> get copyWith => _$CheckoutItemOptionCopyWithImpl<CheckoutItemOption>(this as CheckoutItemOption, _$identity);

  /// Serializes this CheckoutItemOption to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutItemOption&&(identical(other.dimension, dimension) || other.dimension == dimension)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dimension,value);

@override
String toString() {
  return 'CheckoutItemOption(dimension: $dimension, value: $value)';
}


}

/// @nodoc
abstract mixin class $CheckoutItemOptionCopyWith<$Res>  {
  factory $CheckoutItemOptionCopyWith(CheckoutItemOption value, $Res Function(CheckoutItemOption) _then) = _$CheckoutItemOptionCopyWithImpl;
@useResult
$Res call({
 String dimension, String value
});




}
/// @nodoc
class _$CheckoutItemOptionCopyWithImpl<$Res>
    implements $CheckoutItemOptionCopyWith<$Res> {
  _$CheckoutItemOptionCopyWithImpl(this._self, this._then);

  final CheckoutItemOption _self;
  final $Res Function(CheckoutItemOption) _then;

/// Create a copy of CheckoutItemOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dimension = null,Object? value = null,}) {
  return _then(_self.copyWith(
dimension: null == dimension ? _self.dimension : dimension // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckoutItemOption].
extension CheckoutItemOptionPatterns on CheckoutItemOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckoutItemOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckoutItemOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckoutItemOption value)  $default,){
final _that = this;
switch (_that) {
case _CheckoutItemOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckoutItemOption value)?  $default,){
final _that = this;
switch (_that) {
case _CheckoutItemOption() when $default != null:
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
case _CheckoutItemOption() when $default != null:
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
case _CheckoutItemOption():
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
case _CheckoutItemOption() when $default != null:
return $default(_that.dimension,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CheckoutItemOption implements CheckoutItemOption {
  const _CheckoutItemOption({required this.dimension, required this.value});
  factory _CheckoutItemOption.fromJson(Map<String, dynamic> json) => _$CheckoutItemOptionFromJson(json);

@override final  String dimension;
@override final  String value;

/// Create a copy of CheckoutItemOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutItemOptionCopyWith<_CheckoutItemOption> get copyWith => __$CheckoutItemOptionCopyWithImpl<_CheckoutItemOption>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckoutItemOptionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutItemOption&&(identical(other.dimension, dimension) || other.dimension == dimension)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dimension,value);

@override
String toString() {
  return 'CheckoutItemOption(dimension: $dimension, value: $value)';
}


}

/// @nodoc
abstract mixin class _$CheckoutItemOptionCopyWith<$Res> implements $CheckoutItemOptionCopyWith<$Res> {
  factory _$CheckoutItemOptionCopyWith(_CheckoutItemOption value, $Res Function(_CheckoutItemOption) _then) = __$CheckoutItemOptionCopyWithImpl;
@override @useResult
$Res call({
 String dimension, String value
});




}
/// @nodoc
class __$CheckoutItemOptionCopyWithImpl<$Res>
    implements _$CheckoutItemOptionCopyWith<$Res> {
  __$CheckoutItemOptionCopyWithImpl(this._self, this._then);

  final _CheckoutItemOption _self;
  final $Res Function(_CheckoutItemOption) _then;

/// Create a copy of CheckoutItemOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dimension = null,Object? value = null,}) {
  return _then(_CheckoutItemOption(
dimension: null == dimension ? _self.dimension : dimension // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
