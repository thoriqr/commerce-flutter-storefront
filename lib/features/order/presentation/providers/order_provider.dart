import 'package:commerce_flutter_storefront/features/order/data/models/order_detail.dart';
import 'package:commerce_flutter_storefront/features/order/data/models/order_listing_query_params.dart';
import 'package:commerce_flutter_storefront/features/order/data/models/order_listing_result.dart';
import 'package:commerce_flutter_storefront/features/order/di/order_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'order_provider.g.dart';

@riverpod
Future<OrderListingResult> orders(Ref ref, OrderListingQueryParams params) {
  return ref.read(orderRepositoryProvider).getOrders(params);
}

@riverpod
Future<OrderDetail> orderDetail(Ref ref, String orderCode) {
  return ref.read(orderRepositoryProvider).getOrderDetail(orderCode);
}
