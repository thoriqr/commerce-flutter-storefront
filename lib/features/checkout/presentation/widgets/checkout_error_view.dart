import 'package:commerce_flutter_storefront/core/router/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CheckoutErrorView extends StatelessWidget {
  const CheckoutErrorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.shopping_bag_outlined, size: 72),

            const SizedBox(height: 24),

            Text(
              'Unable to load checkout',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall,
            ),

            const SizedBox(height: 8),

            Text(
              'Your checkout session may no longer be available. Please return to your cart and try again.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),

            const SizedBox(height: 24),

            FilledButton(
              onPressed: () {
                context.go(AppRoutes.cart);
              },
              child: const Text('Back to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}
