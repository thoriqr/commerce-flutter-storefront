import 'package:commerce_flutter_storefront/features/order/data/models/order_detail.dart';
import 'package:flutter/material.dart';

extension PaymentStatusX on PaymentStatus {
  String get label {
    switch (this) {
      case PaymentStatus.unpaid:
        return 'Unpaid';

      case PaymentStatus.paid:
        return 'Paid';

      case PaymentStatus.failed:
        return 'Failed';

      case PaymentStatus.expired:
        return 'Expired';
    }
  }

  IconData get icon {
    switch (this) {
      case PaymentStatus.unpaid:
        return Icons.schedule;

      case PaymentStatus.paid:
        return Icons.check_circle;

      case PaymentStatus.failed:
        return Icons.error_outline;

      case PaymentStatus.expired:
        return Icons.timer_off;
    }
  }
}
