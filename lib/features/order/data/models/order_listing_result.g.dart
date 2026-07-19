// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_listing_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderListingResult _$OrderListingResultFromJson(Map<String, dynamic> json) =>
    _OrderListingResult(
      orders: (json['orders'] as List<dynamic>)
          .map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: PaginationMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderListingResultToJson(_OrderListingResult instance) =>
    <String, dynamic>{'orders': instance.orders, 'meta': instance.meta};
