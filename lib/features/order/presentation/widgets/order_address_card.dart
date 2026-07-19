import 'package:commerce_flutter_storefront/features/order/data/models/order_detail.dart';
import 'package:flutter/material.dart';

class OrderAddressCard extends StatelessWidget {
  const OrderAddressCard({super.key, required this.address});

  final OrderUserAddress address;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Shipping Address', style: theme.textTheme.titleMedium),

            const SizedBox(height: 12),

            Text(address.recipientName, style: theme.textTheme.titleSmall),

            const SizedBox(height: 4),

            Text(address.phone),

            const SizedBox(height: 8),

            Text(address.addressLine),

            const SizedBox(height: 4),

            Text(
              [
                address.districtName,
                address.cityName,
                address.provinceName,
                address.postalCode,
              ].join(', '),
              style: theme.textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
