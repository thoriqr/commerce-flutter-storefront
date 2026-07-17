import 'package:commerce_flutter_storefront/core/utils/currency_utils.dart';
import 'package:commerce_flutter_storefront/features/checkout/data/models/checkout_session.dart';
import 'package:flutter/material.dart';

class CheckoutBottomBar extends StatelessWidget {
  const CheckoutBottomBar({super.key, required this.checkout});

  final CheckoutSession checkout;

  String? get message {
    switch (checkout.reason) {
      case CheckoutBlockReason.invalidItems:
        return 'Please review the items in your order.';

      case CheckoutBlockReason.noAddress:
        return 'Please add a shipping address.';

      case CheckoutBlockReason.noShipping:
        return 'Please select a shipping method.';

      case CheckoutBlockReason.shippingNotCalculated:
        return 'Please calculate shipping before placing your order.';

      case null:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      minimum: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (message != null) ...[
            Text(
              message!,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.error,
              ),
            ),

            const SizedBox(height: 8),
          ],

          Row(
            children: [
              Text('Total', style: theme.textTheme.bodyMedium),

              const Spacer(),

              Text(
                CurrencyUtils.formatRupiah(checkout.total),
                style: theme.textTheme.titleLarge,
              ),
            ],
          ),

          const SizedBox(height: 16),

          FilledButton(
            onPressed: checkout.canPlaceOrder
                ? () {
                    // TODO:
                    // Confirm checkout.
                  }
                : null,
            style: FilledButton.styleFrom(
              minimumSize: const Size.fromHeight(52),
            ),
            child: const Text('Place Order'),
          ),
        ],
      ),
    );
  }
}
