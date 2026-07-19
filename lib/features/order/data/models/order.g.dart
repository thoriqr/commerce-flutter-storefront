// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Order _$OrderFromJson(Map<String, dynamic> json) => _Order(
  id: (json['id'] as num).toInt(),
  orderCode: json['orderCode'] as String,
  productId: (json['productId'] as num).toInt(),
  slug: json['slug'] as String,
  status: $enumDecode(_$OrderStatusEnumMap, json['status']),
  total: (json['total'] as num).toInt(),
  createdAt: json['createdAt'] as String,
  itemCount: (json['itemCount'] as num).toInt(),
  previewItem: OrderPreviewItem.fromJson(
    json['previewItem'] as Map<String, dynamic>,
  ),
  canConfirm: json['canConfirm'] as bool,
);

Map<String, dynamic> _$OrderToJson(_Order instance) => <String, dynamic>{
  'id': instance.id,
  'orderCode': instance.orderCode,
  'productId': instance.productId,
  'slug': instance.slug,
  'status': _$OrderStatusEnumMap[instance.status]!,
  'total': instance.total,
  'createdAt': instance.createdAt,
  'itemCount': instance.itemCount,
  'previewItem': instance.previewItem,
  'canConfirm': instance.canConfirm,
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

_OrderPreviewItem _$OrderPreviewItemFromJson(Map<String, dynamic> json) =>
    _OrderPreviewItem(
      name: json['name'] as String,
      imageKey: json['imageKey'] as String?,
    );

Map<String, dynamic> _$OrderPreviewItemToJson(_OrderPreviewItem instance) =>
    <String, dynamic>{'name': instance.name, 'imageKey': instance.imageKey};
