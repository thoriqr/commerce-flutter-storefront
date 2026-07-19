import 'package:commerce_flutter_storefront/features/order/data/models/order_detail.dart';

extension ShipmentStatusX on ShipmentStatus {
  String get label {
    switch (this) {
      case ShipmentStatus.pending:
        return 'Pending';

      case ShipmentStatus.shipped:
        return 'Shipped';

      case ShipmentStatus.delivered:
        return 'Delivered';
    }
  }
}
