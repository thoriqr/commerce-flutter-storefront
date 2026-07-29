import 'package:commerce_flutter_storefront/core/extensions/widget_ref_extension.dart';
import 'package:commerce_flutter_storefront/features/checkout/data/models/checkout_session.dart';
import 'package:commerce_flutter_storefront/features/checkout/presentation/mutations/set_checkout_address_mutation.dart';
import 'package:commerce_flutter_storefront/features/checkout/presentation/mutations/set_checkout_shipping_mutation.dart';
import 'package:commerce_flutter_storefront/features/checkout/presentation/widgets/checkout_address_card.dart';

import 'package:commerce_flutter_storefront/features/checkout/presentation/widgets/checkout_item_tile.dart';
import 'package:commerce_flutter_storefront/features/checkout/presentation/widgets/checkout_shipping_card.dart';
import 'package:commerce_flutter_storefront/features/checkout/presentation/widgets/checkout_summary_card.dart';
import 'package:commerce_flutter_storefront/features/checkout/presentation/widgets/checkout_warehouse_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CheckoutContent extends ConsumerWidget {
  const CheckoutContent({
    super.key,
    required this.checkout,
    required this.onRefresh,
  });

  final CheckoutSession checkout;
  final RefreshCallback onRefresh;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listenMutationError(setCheckoutAddressMutationProvider, context);

    ref.listenMutationError(setCheckoutShippingMutationProvider, context);

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

          const CheckoutWarehouseCard(),

          const SizedBox(height: 16),

          CheckoutShippingCard(checkout: checkout),

          const SizedBox(height: 16),

          for (final item in checkout.items) ...[
            CheckoutItemTile(item: item),
            const SizedBox(height: 12),
          ],

          const SizedBox(height: 16),

          CheckoutSummaryCard(checkout: checkout),
        ],
      ),
    );
  }
}
