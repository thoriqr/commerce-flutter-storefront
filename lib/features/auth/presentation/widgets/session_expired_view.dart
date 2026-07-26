import 'package:commerce_flutter_storefront/core/router/auth_routes.dart';
import 'package:commerce_flutter_storefront/features/auth/constants/login_redirect.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SessionExpiredView extends StatelessWidget {
  const SessionExpiredView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.lock_clock_outlined,
              size: 72,
              color: theme.colorScheme.onSurfaceVariant,
            ),

            const SizedBox(height: 24),

            Text(
              "Session Expired",
              textAlign: TextAlign.center,
              style: theme.textTheme.headlineSmall,
            ),

            const SizedBox(height: 8),

            Text(
              "Your session has expired. Please sign in again to continue.",
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),

            const SizedBox(height: 24),

            FilledButton(
              onPressed: () {
                final location = GoRouterState.of(context).uri.toString();

                AuthRoutes.pushLogin(
                  context,
                  redirect: LoginRedirect(location),
                );
              },
              child: const Text("Sign In"),
            ),
          ],
        ),
      ),
    );
  }
}
