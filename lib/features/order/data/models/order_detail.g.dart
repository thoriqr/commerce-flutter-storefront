// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderDetail _$OrderDetailFromJson(Map<String, dynamic> json) => _OrderDetail(
  orderCode: json['orderCode'] as String,
  subtotal: (json['subtotal'] as num).toInt(),
  shippingCost: (json['shippingCost'] as num).toInt(),
  total: (json['total'] as num).toInt(),
  rawStatus: $enumDecode(_$OrderRawStatusEnumMap, json['rawStatus']),
  status: $enumDecode(_$OrderStatusEnumMap, json['status']),
  paymentStatus: $enumDecode(_$PaymentStatusEnumMap, json['paymentStatus']),
  expiresAt: json['expiresAt'] as String,
  paidAt: json['paidAt'] as String?,
  canPay: json['canPay'] as bool,
  address: OrderUserAddress.fromJson(json['address'] as Map<String, dynamic>),
  shipping: OrderShipping.fromJson(json['shipping'] as Map<String, dynamic>),
  items: (json['items'] as List<dynamic>)
      .map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  warehouseOrigin: OrderWarehouseOrigin.fromJson(
    json['warehouseOrigin'] as Map<String, dynamic>,
  ),
  timeline: (json['timeline'] as List<dynamic>)
      .map((e) => OrderTimeline.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$OrderDetailToJson(_OrderDetail instance) =>
    <String, dynamic>{
      'orderCode': instance.orderCode,
      'subtotal': instance.subtotal,
      'shippingCost': instance.shippingCost,
      'total': instance.total,
      'rawStatus': _$OrderRawStatusEnumMap[instance.rawStatus]!,
      'status': _$OrderStatusEnumMap[instance.status]!,
      'paymentStatus': _$PaymentStatusEnumMap[instance.paymentStatus]!,
      'expiresAt': instance.expiresAt,
      'paidAt': instance.paidAt,
      'canPay': instance.canPay,
      'address': instance.address,
      'shipping': instance.shipping,
      'items': instance.items,
      'warehouseOrigin': instance.warehouseOrigin,
      'timeline': instance.timeline,
    };

const _$OrderRawStatusEnumMap = {
  OrderRawStatus.pending: 'PENDING',
  OrderRawStatus.processing: 'PROCESSING',
  OrderRawStatus.cancelled: 'CANCELLED',
  OrderRawStatus.completed: 'COMPLETED',
};

const _$OrderStatusEnumMap = {
  OrderStatus.failed: 'FAILED',
  OrderStatus.expired: 'EXPIRED',
  OrderStatus.processing: 'PROCESSING',
  OrderStatus.cancelled: 'CANCELLED',
  OrderStatus.completed: 'COMPLETED',
  OrderStatus.shipped: 'SHIPPED',
  OrderStatus.delivered: 'DELIVERED',
  OrderStatus.waitingPayment: 'WAITING_PAYMENT',
  OrderStatus.unknown: 'UNKNOWN',
};

const _$PaymentStatusEnumMap = {
  PaymentStatus.unpaid: 'UNPAID',
  PaymentStatus.paid: 'PAID',
  PaymentStatus.failed: 'FAILED',
  PaymentStatus.expired: 'EXPIRED',
};

_OrderUserAddress _$OrderUserAddressFromJson(Map<String, dynamic> json) =>
    _OrderUserAddress(
      recipientName: json['recipientName'] as String,
      phone: json['phone'] as String,
      addressLine: json['addressLine'] as String,
      provinceName: json['provinceName'] as String,
      cityName: json['cityName'] as String,
      districtName: json['districtName'] as String,
      postalCode: json['postalCode'] as String,
    );

Map<String, dynamic> _$OrderUserAddressToJson(_OrderUserAddress instance) =>
    <String, dynamic>{
      'recipientName': instance.recipientName,
      'phone': instance.phone,
      'addressLine': instance.addressLine,
      'provinceName': instance.provinceName,
      'cityName': instance.cityName,
      'districtName': instance.districtName,
      'postalCode': instance.postalCode,
    };

_OrderShipping _$OrderShippingFromJson(Map<String, dynamic> json) =>
    _OrderShipping(
      courierCode: json['courierCode'] as String,
      courierName: json['courierName'] as String,
      courierService: json['courierService'] as String,
      etd: json['etd'] as String,
      trackingNumber: json['trackingNumber'] as String?,
      status: $enumDecode(_$ShipmentStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$OrderShippingToJson(_OrderShipping instance) =>
    <String, dynamic>{
      'courierCode': instance.courierCode,
      'courierName': instance.courierName,
      'courierService': instance.courierService,
      'etd': instance.etd,
      'trackingNumber': instance.trackingNumber,
      'status': _$ShipmentStatusEnumMap[instance.status]!,
    };

const _$ShipmentStatusEnumMap = {
  ShipmentStatus.pending: 'PENDING',
  ShipmentStatus.shipped: 'SHIPPED',
  ShipmentStatus.delivered: 'DELIVERED',
};

_OrderItem _$OrderItemFromJson(Map<String, dynamic> json) => _OrderItem(
  variantId: (json['variantId'] as num).toInt(),
  productId: (json['productId'] as num).toInt(),
  name: json['name'] as String,
  slug: json['slug'] as String,
  price: (json['price'] as num).toInt(),
  quantity: (json['quantity'] as num).toInt(),
  weight: (json['weight'] as num).toInt(),
  imageKey: json['imageKey'] as String,
  options: (json['options'] as List<dynamic>)
      .map((e) => OrderItemOption.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$OrderItemToJson(_OrderItem instance) =>
    <String, dynamic>{
      'variantId': instance.variantId,
      'productId': instance.productId,
      'name': instance.name,
      'slug': instance.slug,
      'price': instance.price,
      'quantity': instance.quantity,
      'weight': instance.weight,
      'imageKey': instance.imageKey,
      'options': instance.options,
    };

_OrderItemOption _$OrderItemOptionFromJson(Map<String, dynamic> json) =>
    _OrderItemOption(
      dimension: json['dimension'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$OrderItemOptionToJson(_OrderItemOption instance) =>
    <String, dynamic>{'dimension': instance.dimension, 'value': instance.value};

_OrderWarehouseOrigin _$OrderWarehouseOriginFromJson(
  Map<String, dynamic> json,
) => _OrderWarehouseOrigin(
  name: json['name'] as String,
  province: json['province'] as String,
  city: json['city'] as String,
  district: json['district'] as String,
  postalCode: json['postalCode'] as String,
);

Map<String, dynamic> _$OrderWarehouseOriginToJson(
  _OrderWarehouseOrigin instance,
) => <String, dynamic>{
  'name': instance.name,
  'province': instance.province,
  'city': instance.city,
  'district': instance.district,
  'postalCode': instance.postalCode,
};

_OrderTimeline _$OrderTimelineFromJson(Map<String, dynamic> json) =>
    _OrderTimeline(
      key: json['key'] as String,
      label: json['label'] as String,
      date: json['date'] as String?,
      isCompleted: json['isCompleted'] as bool,
      isCurrent: json['isCurrent'] as bool,
    );

Map<String, dynamic> _$OrderTimelineToJson(_OrderTimeline instance) =>
    <String, dynamic>{
      'key': instance.key,
      'label': instance.label,
      'date': instance.date,
      'isCompleted': instance.isCompleted,
      'isCurrent': instance.isCurrent,
    };
