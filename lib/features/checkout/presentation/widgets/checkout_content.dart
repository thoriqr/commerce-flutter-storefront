import 'package:commerce_flutter_storefront/features/checkout/data/models/checkout_session.dart';
import 'package:commerce_flutter_storefront/features/checkout/presentation/widgets/checkout_address_card.dart';

import 'package:commerce_flutter_storefront/features/checkout/presentation/widgets/checkout_item_tile.dart';
import 'package:commerce_flutter_storefront/features/checkout/presentation/widgets/checkout_shipping_card.dart';
import 'package:commerce_flutter_storefront/features/checkout/presentation/widgets/checkout_summary_card.dart';
import 'package:flutter/material.dart';

class CheckoutContent extends StatelessWidget {
  const CheckoutContent({
    super.key,
    required this.checkout,
    required this.onRefresh,
  });

  final CheckoutSession checkout;
  final RefreshCallback onRefresh;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          CheckoutAddressCard(
            sessionId: checkout.sessionId,
            address: checkout.address,
          ),

          const SizedBox(height: 16),

          CheckoutShippingCard(checkout: checkout),

          const SizedBox(height: 16),

          for (final item in checkout.items) ...[
            CheckoutItemTile(item: item),
            const SizedBox(height: 12),
          ],

          const SizedBox(height: 16),

          CheckoutSummaryCard(checkout: checkout),

          const SizedBox(height: 100),
        ],
      ),
    );
  }
}
