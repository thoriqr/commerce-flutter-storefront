import 'package:commerce_flutter_storefront/features/order/data/models/order_detail.dart';
import 'package:commerce_flutter_storefront/features/order/extensions/shipment_status_extension.dart';
import 'package:flutter/material.dart';

class OrderShippingCard extends StatelessWidget {
  const OrderShippingCard({super.key, required this.shipping});

  final OrderShipping shipping;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final trackingNumber = shipping.trackingNumber;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Shipping', style: theme.textTheme.titleMedium),

            const SizedBox(height: 12),

            Text(
              '${shipping.courierName} - '
              '${shipping.courierService}',
              style: theme.textTheme.titleSmall,
            ),

            const SizedBox(height: 4),

            Text(
              'Estimated delivery: '
              '${shipping.etd}',
              style: theme.textTheme.bodySmall,
            ),

            const SizedBox(height: 16),

            Text('Shipment Status', style: theme.textTheme.labelMedium),

            const SizedBox(height: 4),

            Row(
              children: [
                Icon(switch (shipping.status) {
                  ShipmentStatus.pending => Icons.schedule,

                  ShipmentStatus.shipped => Icons.local_shipping,

                  ShipmentStatus.delivered => Icons.inventory_2,
                }, size: 18),

                const SizedBox(width: 8),

                Text(shipping.status.label, style: theme.textTheme.bodyMedium),
              ],
            ),

            if (trackingNumber?.isNotEmpty ?? false) ...[
              const SizedBox(height: 16),

              Text('Tracking Number', style: theme.textTheme.labelMedium),

              const SizedBox(height: 4),

              SelectableText(
                trackingNumber!,
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
