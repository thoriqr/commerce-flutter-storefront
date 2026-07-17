import 'package:commerce_flutter_storefront/features/checkout/presentation/providers/checkout_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CheckoutWarehouseCard extends ConsumerWidget {
  const CheckoutWarehouseCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final warehouse = ref.watch(warehouseOriginProvider);

    final body = switch (warehouse) {
      AsyncLoading() => const SizedBox.shrink(),

      AsyncError() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Warehouse information is currently unavailable.',
            style: Theme.of(context).textTheme.bodyMedium,
          ),

          const SizedBox(height: 4),

          Text(
            'Please contact support if this issue persists.',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),

      AsyncData(:final value) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(value.name, style: Theme.of(context).textTheme.titleSmall),

          const SizedBox(height: 4),

          Text(
            [value.district, value.city, value.province].join(', '),
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    };

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Ships From', style: Theme.of(context).textTheme.titleMedium),

            const SizedBox(height: 12),

            body,
          ],
        ),
      ),
    );
  }
}
