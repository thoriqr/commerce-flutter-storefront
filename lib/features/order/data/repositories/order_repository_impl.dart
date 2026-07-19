import 'package:commerce_flutter_storefront/core/network/api_response_extension.dart';
import 'package:commerce_flutter_storefront/features/order/data/datasource/order_api.dart';
import 'package:commerce_flutter_storefront/features/order/data/models/order_detail.dart';
import 'package:commerce_flutter_storefront/features/order/data/models/order_listing_query_params.dart';
import 'package:commerce_flutter_storefront/features/order/data/models/order_listing_result.dart';
import 'package:commerce_flutter_storefront/features/order/data/models/snap_token_response.dart';
import 'package:commerce_flutter_storefront/features/order/domain/repositories/order_repository.dart';

class OrderRepositoryImpl implements OrderRepository {
  const OrderRepositoryImpl(this._api);

  final OrderApi _api;

  @override
  Future<OrderListingResult> getOrders(OrderListingQueryParams params) async {
    final res = await _api.getOrders(params.toQuery()).unwrap();

    return OrderListingResult(orders: res.data, meta: res.meta);
  }

  @override
  Future<OrderDetail> getOrderDetail(String orderCode) async {
    return await _api.getOrderDetail(orderCode).unwrap();
  }

  @override
  Future<void> cancelOrder(String orderCode) async {
    return await _api.cancelOrder(orderCode).unwrap();
  }

  @override
  Future<void> confirmDelivered(String orderCode) async {
    return await _api.confirmDelivered(orderCode).unwrap();
  }

  @override
  Future<SnapTokenResponse> createSnapToken(String orderCode) async {
    return await _api.createSnapToken(orderCode).unwrap();
  }
}
