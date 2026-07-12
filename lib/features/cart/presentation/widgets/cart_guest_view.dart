import 'package:commerce_flutter_storefront/core/router/auth_routes.dart';
import 'package:commerce_flutter_storefront/features/auth/constants/login_redirect.dart';
import 'package:flutter/material.dart';

import 'package:commerce_flutter_storefront/core/router/app_routes.dart';

class CartGuestView extends StatelessWidget {
  const CartGuestView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.shopping_cart_outlined, size: 72),

            const SizedBox(height: 24),

            Text(
              'Sign in to view your cart',
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 8),

            Text(
              'Log in to access your shopping cart.',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 24),

            FilledButton(
              onPressed: () {
                AuthRoutes.pushLogin(
                  context,
                  redirect: const LoginRedirect(AppRoutes.cart),
                );
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
