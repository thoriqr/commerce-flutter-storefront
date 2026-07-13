import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout_session.freezed.dart';
part 'checkout_session.g.dart';

enum CheckoutBlockReason {
  @JsonValue('INVALID_ITEMS')
  invalidItems,

  @JsonValue('NO_ADDRESS')
  noAddress,

  @JsonValue('NO_SHIPPING')
  noShipping,

  @JsonValue('SHIPPING_NOT_CALCULATED')
  shippingNotCalculated,
}

enum CheckoutItemWarning {
  @JsonValue('UNAVAILABLE')
  unavailable,

  @JsonValue('INSUFFICIENT_STOCK')
  insufficientStock,
}

@freezed
abstract class CheckoutSession with _$CheckoutSession {
  const factory CheckoutSession({
    required int sessionId,
    required String expiresAt,
    required int subtotal,
    required int shippingCost,
    required int total,
    required int totalWeight,
    required CheckoutUserAddress? address,
    required String? courierCode,
    required String? courierName,
    required String? courierService,
    required String? shippingEtd,
    required List<CheckoutItem> items,
    required bool canPlaceOrder,
    required CheckoutBlockReason? reason,
  }) = _CheckoutSession;

  factory CheckoutSession.fromJson(Map<String, dynamic> json) =>
      _$CheckoutSessionFromJson(json);
}

@freezed
abstract class CheckoutUserAddress with _$CheckoutUserAddress {
  const factory CheckoutUserAddress({
    required int id,
    required String recipientName,
    required String phone,
    required String addressLine,
    required String provinceName,
    required String cityName,
    required String districtName,
    required String postalCode,
  }) = _CheckoutUserAddress;

  factory CheckoutUserAddress.fromJson(Map<String, dynamic> json) =>
      _$CheckoutUserAddressFromJson(json);
}

@freezed
abstract class CheckoutItem with _$CheckoutItem {
  const factory CheckoutItem({
    required int variantId,
    required int productId,
    required String productName,
    required String slug,
    required int price,
    required int quantity,
    required int stock,
    required int weight,
    required bool isAvailable,
    required String? imageKey,
    required CheckoutItemWarning? warning,
    required List<CheckoutItemOption> options,
  }) = _CheckoutItem;

  factory CheckoutItem.fromJson(Map<String, dynamic> json) =>
      _$CheckoutItemFromJson(json);
}

@freezed
abstract class CheckoutItemOption with _$CheckoutItemOption {
  const factory CheckoutItemOption({
    required String dimension,
    required String value,
  }) = _CheckoutItemOption;

  factory CheckoutItemOption.fromJson(Map<String, dynamic> json) =>
      _$CheckoutItemOptionFromJson(json);
}
