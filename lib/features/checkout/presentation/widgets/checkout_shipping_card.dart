import 'package:commerce_flutter_storefront/core/utils/currency_utils.dart';
import 'package:commerce_flutter_storefront/features/checkout/data/models/checkout_session.dart';
import 'package:flutter/material.dart';

class CheckoutShippingCard extends StatelessWidget {
  const CheckoutShippingCard({super.key, required this.checkout});

  final CheckoutSession checkout;

  bool get hasShipping {
    return checkout.courierCode != null &&
        checkout.courierName != null &&
        checkout.courierService != null &&
        checkout.shippingEtd != null &&
        checkout.shippingEtd!.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: hasShipping
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Shipping Method',
                        style: theme.textTheme.titleMedium,
                      ),

                      const Spacer(),

                      TextButton(
                        onPressed: () {
                          // TODO: Select shipping.
                        },
                        child: const Text('Change'),
                      ),
                    ],
                  ),

                  const SizedBox(height: 8),

                  Text(
                    '${checkout.courierName} - ${checkout.courierService}',
                    style: theme.textTheme.titleSmall,
                  ),

                  const SizedBox(height: 4),

                  Text(
                    'Estimated delivery: ${checkout.shippingEtd}',
                    style: theme.textTheme.bodySmall,
                  ),

                  const SizedBox(height: 8),

                  Text(
                    CurrencyUtils.formatRupiah(checkout.shippingCost),
                    style: theme.textTheme.titleMedium,
                  ),
                ],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Shipping Method', style: theme.textTheme.titleMedium),

                  const SizedBox(height: 12),

                  Text(
                    'Select a shipping option to continue.',
                    style: theme.textTheme.bodyMedium,
                  ),

                  const SizedBox(height: 16),

                  OutlinedButton(
                    onPressed: () {
                      // TODO: Select shipping.
                    },
                    child: const Text('Select Shipping'),
                  ),
                ],
              ),
      ),
    );
  }
}
