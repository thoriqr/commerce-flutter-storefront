import 'package:commerce_flutter_storefront/core/router/auth_routes.dart';
import 'package:flutter/material.dart';

class AccountGuestView extends StatelessWidget {
  const AccountGuestView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.account_circle_outlined, size: 80),
            const SizedBox(height: 16),
            Text("Welcome", style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 8),
            const Text(
              "Sign in to access your account.",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            FilledButton(
              onPressed: () => AuthRoutes.pushLogin(context),
              child: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
