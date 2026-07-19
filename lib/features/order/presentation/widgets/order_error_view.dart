import 'package:commerce_flutter_storefront/core/router/account_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OrderErrorView extends StatelessWidget {
  const OrderErrorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.receipt_long_outlined, size: 72),

            const SizedBox(height: 24),

            Text(
              'Unable to load order',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall,
            ),

            const SizedBox(height: 8),

            Text(
              'This order may no longer be available or you may not have access to it.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),

            const SizedBox(height: 24),

            FilledButton(
              onPressed: () {
                context.go(AccountRoutes.orders);
              },
              child: const Text('Back to Orders'),
            ),
          ],
        ),
      ),
    );
  }
}
