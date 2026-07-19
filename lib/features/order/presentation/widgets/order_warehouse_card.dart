import 'package:commerce_flutter_storefront/features/order/data/models/order_detail.dart';
import 'package:flutter/material.dart';

class OrderWarehouseCard extends StatelessWidget {
  const OrderWarehouseCard({super.key, required this.warehouse});

  final OrderWarehouseOrigin warehouse;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Ships From', style: theme.textTheme.titleMedium),

            const SizedBox(height: 12),

            Text(warehouse.name, style: theme.textTheme.titleSmall),

            const SizedBox(height: 8),

            Text(
              '${warehouse.district}, '
              '${warehouse.city}',
            ),

            const SizedBox(height: 4),

            Text(
              '${warehouse.province} '
              '${warehouse.postalCode}',
              style: theme.textTheme.bodySmall,
            ),

            const SizedBox(height: 12),

            Text(
              'Shipping costs are calculated from this warehouse location.',
              style: theme.textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
