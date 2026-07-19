import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_detail.freezed.dart';
part 'order_detail.g.dart';

enum OrderRawStatus {
  @JsonValue('PENDING')
  pending,

  @JsonValue('PROCESSING')
  processing,

  @JsonValue('CANCELLED')
  cancelled,

  @JsonValue('COMPLETED')
  completed,
}

enum OrderStatus {
  @JsonValue('FAILED')
  failed,

  @JsonValue('EXPIRED')
  expired,

  @JsonValue('PROCESSING')
  processing,

  @JsonValue('CANCELLED')
  cancelled,

  @JsonValue('COMPLETED')
  completed,

  @JsonValue('SHIPPED')
  shipped,

  @JsonValue('DELIVERED')
  delivered,

  @JsonValue('WAITING_PAYMENT')
  waitingPayment,

  @JsonValue('UNKNOWN')
  unknown,
}

enum PaymentStatus {
  @JsonValue('UNPAID')
  unpaid,

  @JsonValue('PAID')
  paid,

  @JsonValue('FAILED')
  failed,

  @JsonValue('EXPIRED')
  expired,
}

enum ShipmentStatus {
  @JsonValue('PENDING')
  pending,

  @JsonValue('SHIPPED')
  shipped,

  @JsonValue('DELIVERED')
  delivered,
}

@freezed
abstract class OrderDetail with _$OrderDetail {
  const factory OrderDetail({
    required String orderCode,
    required int subtotal,
    required int shippingCost,
    required int total,
    required OrderRawStatus rawStatus,
    required OrderStatus status,
    required PaymentStatus paymentStatus,
    required String expiresAt,
    required String? paidAt,
    required bool canPay,
    required OrderUserAddress address,
    required OrderShipping shipping,
    required List<OrderItem> items,
    required OrderWarehouseOrigin warehouseOrigin,
    required List<OrderTimeline> timeline,
  }) = _OrderDetail;

  factory OrderDetail.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailFromJson(json);
}

@freezed
abstract class OrderUserAddress with _$OrderUserAddress {
  const factory OrderUserAddress({
    required String recipientName,
    required String phone,
    required String addressLine,
    required String provinceName,
    required String cityName,
    required String districtName,
    required String postalCode,
  }) = _OrderUserAddress;

  factory OrderUserAddress.fromJson(Map<String, dynamic> json) =>
      _$OrderUserAddressFromJson(json);
}

@freezed
abstract class OrderShipping with _$OrderShipping {
  const factory OrderShipping({
    required String courierCode,
    required String courierName,
    required String courierService,
    required String etd,
    String? trackingNumber,
    required ShipmentStatus status,
  }) = _OrderShipping;

  factory OrderShipping.fromJson(Map<String, dynamic> json) =>
      _$OrderShippingFromJson(json);
}

@freezed
abstract class OrderItem with _$OrderItem {
  const factory OrderItem({
    required int variantId,
    required int productId,
    required String name,
    required String slug,
    required int price,
    required int quantity,
    required int weight,
    required String imageKey,
    required List<OrderItemOption> options,
  }) = _OrderItem;

  factory OrderItem.fromJson(Map<String, dynamic> json) =>
      _$OrderItemFromJson(json);
}

@freezed
abstract class OrderItemOption with _$OrderItemOption {
  const factory OrderItemOption({
    required String dimension,
    required String value,
  }) = _OrderItemOption;

  factory OrderItemOption.fromJson(Map<String, dynamic> json) =>
      _$OrderItemOptionFromJson(json);
}

@freezed
abstract class OrderWarehouseOrigin with _$OrderWarehouseOrigin {
  const factory OrderWarehouseOrigin({
    required String name,
    required String province,
    required String city,
    required String district,
    required String postalCode,
  }) = _OrderWarehouseOrigin;

  factory OrderWarehouseOrigin.fromJson(Map<String, dynamic> json) =>
      _$OrderWarehouseOriginFromJson(json);
}

@freezed
abstract class OrderTimeline with _$OrderTimeline {
  const factory OrderTimeline({
    required String key,
    required String label,
    required String? date,
    required bool isCompleted,
    required bool isCurrent,
  }) = _OrderTimeline;

  factory OrderTimeline.fromJson(Map<String, dynamic> json) =>
      _$OrderTimelineFromJson(json);
}
