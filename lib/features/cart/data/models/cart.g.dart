// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Cart _$CartFromJson(Map<String, dynamic> json) => _Cart(
  items: (json['items'] as List<dynamic>)
      .map((e) => CartItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  summary: CartSummary.fromJson(json['summary'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CartToJson(_Cart instance) => <String, dynamic>{
  'items': instance.items,
  'summary': instance.summary,
};

_CartItem _$CartItemFromJson(Map<String, dynamic> json) => _CartItem(
  variantId: (json['variantId'] as num).toInt(),
  productId: (json['productId'] as num).toInt(),
  name: json['name'] as String,
  slug: json['slug'] as String,
  price: (json['price'] as num).toInt(),
  stock: (json['stock'] as num).toInt(),
  quantity: (json['quantity'] as num).toInt(),
  imageKey: json['imageKey'] as String,
  isAvailable: json['isAvailable'] as bool,
  warning: $enumDecodeNullable(_$CartItemWarningEnumMap, json['warning']),
  options: (json['options'] as List<dynamic>)
      .map((e) => CartItemOption.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CartItemToJson(_CartItem instance) => <String, dynamic>{
  'variantId': instance.variantId,
  'productId': instance.productId,
  'name': instance.name,
  'slug': instance.slug,
  'price': instance.price,
  'stock': instance.stock,
  'quantity': instance.quantity,
  'imageKey': instance.imageKey,
  'isAvailable': instance.isAvailable,
  'warning': _$CartItemWarningEnumMap[instance.warning],
  'options': instance.options,
};

const _$CartItemWarningEnumMap = {
  CartItemWarning.unavailable: 'UNAVAILABLE',
  CartItemWarning.outOfStock: 'OUT_OF_STOCK',
  CartItemWarning.insufficientStock: 'INSUFFICIENT_STOCK',
  CartItemWarning.lowStock: 'LOW_STOCK',
};

_CartItemOption _$CartItemOptionFromJson(Map<String, dynamic> json) =>
    _CartItemOption(
      dimension: json['dimension'] as String,
      string: json['string'] as String,
    );

Map<String, dynamic> _$CartItemOptionToJson(_CartItemOption instance) =>
    <String, dynamic>{
      'dimension': instance.dimension,
      'string': instance.string,
    };

_CartSummary _$CartSummaryFromJson(Map<String, dynamic> json) => _CartSummary(
  totalItems: (json['totalItems'] as num).toInt(),
  subtotal: (json['subtotal'] as num).toInt(),
);

Map<String, dynamic> _$CartSummaryToJson(_CartSummary instance) =>
    <String, dynamic>{
      'totalItems': instance.totalItems,
      'subtotal': instance.subtotal,
    };
