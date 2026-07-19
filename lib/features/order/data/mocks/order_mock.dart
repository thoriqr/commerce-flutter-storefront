import 'package:commerce_flutter_storefront/features/order/data/models/order.dart';
import 'package:commerce_flutter_storefront/features/order/data/models/order_detail.dart';

abstract final class OrderMock {
  static Order item({
    int id = 1,
    String code = 'ORD-20260720-ABC123',
    OrderStatus status = OrderStatus.waitingPayment,
  }) {
    return Order(
      id: id,
      orderCode: code,
      productId: 1,
      slug: 'product-multi-variant',
      status: status,
      total: 320000,
      createdAt: DateTime.now().toIso8601String(),
      itemCount: 2,
      canConfirm: false,
      previewItem: const OrderPreviewItem(
        name: 'Product with multi variant two dimension',
        imageKey: "skeleton",
      ),
    );
  }

  static List<Order> items() {
    return [
      item(id: 1, status: OrderStatus.waitingPayment),

      item(id: 2, code: 'ORD-20260720-XYZ111', status: OrderStatus.processing),

      item(id: 3, code: 'ORD-20260720-AAA222', status: OrderStatus.delivered),
    ];
  }
}
