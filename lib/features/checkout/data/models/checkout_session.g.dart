// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CheckoutSession _$CheckoutSessionFromJson(Map<String, dynamic> json) =>
    _CheckoutSession(
      sessionId: (json['sessionId'] as num).toInt(),
      expiresAt: json['expiresAt'] as String,
      subtotal: (json['subtotal'] as num).toInt(),
      shippingCost: (json['shippingCost'] as num).toInt(),
      total: (json['total'] as num).toInt(),
      totalWeight: (json['totalWeight'] as num).toInt(),
      address: json['address'] == null
          ? null
          : CheckoutUserAddress.fromJson(
              json['address'] as Map<String, dynamic>,
            ),
      courierCode: json['courierCode'] as String?,
      courierName: json['courierName'] as String?,
      courierService: json['courierService'] as String?,
      shippingEtd: json['shippingEtd'] as String?,
      items: (json['items'] as List<dynamic>)
          .map((e) => CheckoutItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      canPlaceOrder: json['canPlaceOrder'] as bool,
      reason: $enumDecodeNullable(_$CheckoutBlockReasonEnumMap, json['reason']),
    );

Map<String, dynamic> _$CheckoutSessionToJson(_CheckoutSession instance) =>
    <String, dynamic>{
      'sessionId': instance.sessionId,
      'expiresAt': instance.expiresAt,
      'subtotal': instance.subtotal,
      'shippingCost': instance.shippingCost,
      'total': instance.total,
      'totalWeight': instance.totalWeight,
      'address': instance.address,
      'courierCode': instance.courierCode,
      'courierName': instance.courierName,
      'courierService': instance.courierService,
      'shippingEtd': instance.shippingEtd,
      'items': instance.items,
      'canPlaceOrder': instance.canPlaceOrder,
      'reason': _$CheckoutBlockReasonEnumMap[instance.reason],
    };

const _$CheckoutBlockReasonEnumMap = {
  CheckoutBlockReason.invalidItems: 'INVALID_ITEMS',
  CheckoutBlockReason.noAddress: 'NO_ADDRESS',
  CheckoutBlockReason.noShipping: 'NO_SHIPPING',
  CheckoutBlockReason.shippingNotCalculated: 'SHIPPING_NOT_CALCULATED',
};

_CheckoutUserAddress _$CheckoutUserAddressFromJson(Map<String, dynamic> json) =>
    _CheckoutUserAddress(
      id: (json['id'] as num?)?.toInt(),
      recipientName: json['recipientName'] as String,
      phone: json['phone'] as String,
      addressLine: json['addressLine'] as String,
      provinceName: json['provinceName'] as String,
      cityName: json['cityName'] as String,
      districtName: json['districtName'] as String,
      postalCode: json['postalCode'] as String,
    );

Map<String, dynamic> _$CheckoutUserAddressToJson(
  _CheckoutUserAddress instance,
) => <String, dynamic>{
  'id': instance.id,
  'recipientName': instance.recipientName,
  'phone': instance.phone,
  'addressLine': instance.addressLine,
  'provinceName': instance.provinceName,
  'cityName': instance.cityName,
  'districtName': instance.districtName,
  'postalCode': instance.postalCode,
};

_CheckoutItem _$CheckoutItemFromJson(Map<String, dynamic> json) =>
    _CheckoutItem(
      variantId: (json['variantId'] as num).toInt(),
      productId: (json['productId'] as num).toInt(),
      productName: json['productName'] as String,
      slug: json['slug'] as String,
      price: (json['price'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
      stock: (json['stock'] as num).toInt(),
      weight: (json['weight'] as num).toInt(),
      isAvailable: json['isAvailable'] as bool,
      imageKey: json['imageKey'] as String?,
      warning: $enumDecodeNullable(
        _$CheckoutItemWarningEnumMap,
        json['warning'],
      ),
      options: (json['options'] as List<dynamic>)
          .map((e) => CheckoutItemOption.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CheckoutItemToJson(_CheckoutItem instance) =>
    <String, dynamic>{
      'variantId': instance.variantId,
      'productId': instance.productId,
      'productName': instance.productName,
      'slug': instance.slug,
      'price': instance.price,
      'quantity': instance.quantity,
      'stock': instance.stock,
      'weight': instance.weight,
      'isAvailable': instance.isAvailable,
      'imageKey': instance.imageKey,
      'warning': _$CheckoutItemWarningEnumMap[instance.warning],
      'options': instance.options,
    };

const _$CheckoutItemWarningEnumMap = {
  CheckoutItemWarning.unavailable: 'UNAVAILABLE',
  CheckoutItemWarning.insufficientStock: 'INSUFFICIENT_STOCK',
};

_CheckoutItemOption _$CheckoutItemOptionFromJson(Map<String, dynamic> json) =>
    _CheckoutItemOption(
      dimension: json['dimension'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$CheckoutItemOptionToJson(_CheckoutItemOption instance) =>
    <String, dynamic>{'dimension': instance.dimension, 'value': instance.value};
