import 'package:commerce_flutter_storefront/core/utils/app_date_utils.dart';
import 'package:commerce_flutter_storefront/core/utils/currency_utils.dart';
import 'package:commerce_flutter_storefront/features/order/data/models/order_detail.dart';
import 'package:commerce_flutter_storefront/features/order/extensions/payment_status_extension.dart';
import 'package:flutter/material.dart';

class OrderSummaryCard extends StatelessWidget {
  const OrderSummaryCard({super.key, required this.order});

  final OrderDetail order;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Order Summary', style: theme.textTheme.titleMedium),

            const SizedBox(height: 16),

            Row(
              children: [
                const Text('Subtotal'),

                const Spacer(),

                Text(CurrencyUtils.formatRupiah(order.subtotal)),
              ],
            ),

            const SizedBox(height: 8),

            Row(
              children: [
                const Text('Shipping'),

                const Spacer(),

                Text(CurrencyUtils.formatRupiah(order.shippingCost)),
              ],
            ),

            const Divider(height: 32),

            Row(
              children: [
                Text('Total', style: theme.textTheme.titleMedium),

                const Spacer(),

                Text(
                  CurrencyUtils.formatRupiah(order.total),
                  style: theme.textTheme.titleMedium,
                ),
              ],
            ),

            const SizedBox(height: 24),

            Text('Payment Status', style: theme.textTheme.labelLarge),

            const SizedBox(height: 8),

            Row(
              children: [
                Icon(order.paymentStatus.icon, size: 18),

                const SizedBox(width: 8),

                Text(
                  order.paymentStatus.label,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),

            const SizedBox(height: 16),

            Text('Paid At', style: theme.textTheme.labelLarge),

            const SizedBox(height: 4),

            Text(
              order.paidAt == null ? '-' : AppDateUtils.dateTime(order.paidAt!),
              style: theme.textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
