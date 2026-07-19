import 'package:commerce_flutter_storefront/features/order/data/models/order_detail.dart';
import 'package:commerce_flutter_storefront/features/order/data/models/order_listing_query_params.dart';
import 'package:commerce_flutter_storefront/features/order/data/models/order_listing_result.dart';
import 'package:commerce_flutter_storefront/features/order/data/models/snap_token_response.dart';

abstract interface class OrderRepository {
  Future<OrderListingResult> getOrders(OrderListingQueryParams params);

  Future<OrderDetail> getOrderDetail(String orderCode);

  Future<void> cancelOrder(String orderCode);

  Future<void> confirmDelivered(String orderCode);

  Future<SnapTokenResponse> createSnapToken(String orderCode);
}
