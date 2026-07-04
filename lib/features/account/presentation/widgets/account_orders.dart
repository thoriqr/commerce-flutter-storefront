import 'package:commerce_flutter_storefront/core/router/account_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AccountOrders extends StatelessWidget {
  const AccountOrders({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      child: ListTile(
        leading: const Icon(Icons.receipt_long_outlined),
        title: const Text('Orders'),
        subtitle: Text(
          'View your order history and track purchases.',
          style: theme.textTheme.bodyMedium?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
        trailing: const Icon(Icons.chevron_right),
        onTap: () {
          context.push(AccountRoutes.orders);
        },
      ),
    );
  }
}
