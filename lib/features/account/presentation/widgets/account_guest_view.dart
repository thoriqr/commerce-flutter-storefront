import 'package:commerce_flutter_storefront/core/router/auth_routes.dart';
import 'package:commerce_flutter_storefront/features/auth/constants/login_redirect.dart';
import 'package:flutter/material.dart';

class AccountGuestView extends StatelessWidget {
  const AccountGuestView({super.key, this.redirect});

  final LoginRedirect? redirect;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.account_circle_outlined, size: 88),

            const SizedBox(height: 24),

            Text(
              'Sign in required',
              style: Theme.of(context).textTheme.headlineSmall,
            ),

            const SizedBox(height: 12),

            Text(
              'Sign in to continue.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),

            const SizedBox(height: 32),

            FilledButton(
              onPressed: () {
                AuthRoutes.pushLogin(context, redirect: redirect);
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
