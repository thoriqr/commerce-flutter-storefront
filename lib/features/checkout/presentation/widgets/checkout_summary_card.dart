import 'package:commerce_flutter_storefront/core/utils/currency_utils.dart';
import 'package:commerce_flutter_storefront/features/checkout/data/models/checkout_session.dart';
import 'package:flutter/material.dart';

class CheckoutSummaryCard extends StatelessWidget {
  const CheckoutSummaryCard({super.key, required this.checkout});

  final CheckoutSession checkout;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Order Summary', style: theme.textTheme.titleMedium),
            ),

            const SizedBox(height: 16),

            _SummaryRow(
              label: 'Subtotal',
              value: CurrencyUtils.formatRupiah(checkout.subtotal),
            ),

            const SizedBox(height: 8),

            _SummaryRow(
              label: 'Shipping',
              value: CurrencyUtils.formatRupiah(checkout.shippingCost),
            ),

            const Divider(height: 32),

            _SummaryRow(
              label: 'Total',
              value: CurrencyUtils.formatRupiah(checkout.total),
              isBold: true,
            ),
          ],
        ),
      ),
    );
  }
}

class _SummaryRow extends StatelessWidget {
  const _SummaryRow({
    required this.label,
    required this.value,
    this.isBold = false,
  });

  final String label;
  final String value;
  final bool isBold;

  @override
  Widget build(BuildContext context) {
    final style = isBold
        ? Theme.of(context).textTheme.titleMedium
        : Theme.of(context).textTheme.bodyMedium;

    return Row(
      children: [
        Text(label, style: style),

        const Spacer(),

        Text(value, style: style),
      ],
    );
  }
}
