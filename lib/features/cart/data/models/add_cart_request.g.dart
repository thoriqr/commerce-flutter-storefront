// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_cart_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddCartRequest _$AddCartRequestFromJson(Map<String, dynamic> json) =>
    _AddCartRequest(
      variantId: (json['variantId'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$AddCartRequestToJson(_AddCartRequest instance) =>
    <String, dynamic>{
      'variantId': instance.variantId,
      'quantity': instance.quantity,
    };
