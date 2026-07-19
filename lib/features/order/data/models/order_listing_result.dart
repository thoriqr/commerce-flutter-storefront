import 'package:commerce_flutter_storefront/core/models/pagination_meta.dart';
import 'package:commerce_flutter_storefront/features/order/data/models/order.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_listing_result.freezed.dart';
part 'order_listing_result.g.dart';

@freezed
abstract class OrderListingResult with _$OrderListingResult {
  const factory OrderListingResult({
    required List<Order> orders,
    required PaginationMeta meta,
  }) = _OrderListingResult;

  factory OrderListingResult.fromJson(Map<String, dynamic> json) =>
      _$OrderListingResultFromJson(json);
}
