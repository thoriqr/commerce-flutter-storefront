import 'package:commerce_flutter_storefront/features/order/data/models/order_detail.dart';

extension OrderStatusX on OrderStatus {
  String get label {
    switch (this) {
      case OrderStatus.waitingPayment:
        return 'Waiting for Payment';

      case OrderStatus.processing:
        return 'Processing';

      case OrderStatus.shipped:
        return 'Shipped';

      case OrderStatus.delivered:
        return 'Delivered';

      case OrderStatus.cancelled:
        return 'Cancelled';

      case OrderStatus.completed:
        return 'Completed';

      case OrderStatus.expired:
        return 'Expired';

      case OrderStatus.failed:
        return 'Failed';

      case OrderStatus.unknown:
        return 'Unknown';
    }
  }
}
