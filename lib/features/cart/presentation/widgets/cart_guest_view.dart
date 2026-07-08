import 'package:commerce_flutter_storefront/core/router/auth_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CartGuestView extends StatelessWidget {
  const CartGuestView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.shopping_cart_outlined, size: 72),

            const SizedBox(height: 24),

            Text(
              'Sign in to view your cart',
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 12),

            Text(
              'Your shopping cart is available after signing in.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),

            const SizedBox(height: 24),

            FilledButton(
              onPressed: () {
                context.push(AuthRoutes.login);
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
