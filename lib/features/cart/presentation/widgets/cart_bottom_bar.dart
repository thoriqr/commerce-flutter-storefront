import 'package:commerce_flutter_storefront/core/utils/currency_utils.dart';
import 'package:commerce_flutter_storefront/features/cart/data/models/cart.dart';
import 'package:flutter/material.dart';

class CartBottomBar extends StatelessWidget {
  const CartBottomBar({super.key, required this.cart, required this.enabled});

  final Cart cart;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      top: false,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: theme.scaffoldBackgroundColor,
          border: Border(top: BorderSide(color: theme.dividerColor)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (cart.hasUnavailableItems) ...[
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: theme.colorScheme.errorContainer,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.warning_amber_rounded,
                      color: theme.colorScheme.onErrorContainer,
                    ),

                    const SizedBox(width: 12),

                    Expanded(
                      child: Text(
                        'Some items require your attention before checkout.',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.colorScheme.onErrorContainer,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),
            ],

            Row(
              children: [
                Text('Subtotal', style: theme.textTheme.bodyLarge),

                const Spacer(),

                Text(
                  CurrencyUtils.formatRupiah(cart.summary.subtotal),
                  style: theme.textTheme.titleMedium,
                ),
              ],
            ),

            const SizedBox(height: 16),

            FilledButton(
              onPressed: enabled && cart.canCheckout
                  ? () {
                      // TODO:
                      // Navigate to checkout page.
                    }
                  : null,
              style: FilledButton.styleFrom(
                minimumSize: const Size.fromHeight(52),
              ),
              child: Text('Checkout (${cart.summary.totalItems})'),
            ),
          ],
        ),
      ),
    );
  }
}
