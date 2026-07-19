import 'package:commerce_flutter_storefront/features/order/data/models/order_sort_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_listing_query_params.freezed.dart';

@freezed
abstract class OrderListingQueryParams with _$OrderListingQueryParams {
  const factory OrderListingQueryParams({
    @Default(1) int page,

    @Default(10) int limit,

    @Default(OrderSortStatus.completed) OrderSortStatus status,
  }) = _OrderListingQueryParams;
}

extension OrderListingQueryParamsX on OrderListingQueryParams {
  Map<String, dynamic> toQuery() {
    return {'page': page, 'limit': limit, 'status': status.value};
  }
}
