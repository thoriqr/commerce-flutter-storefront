import 'package:commerce_flutter_storefront/core/router/account_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../data/models/user_profile.dart';

class AccountDefaultAddress extends StatelessWidget {
  const AccountDefaultAddress({super.key, required this.address});

  final UserDefaultAddress? address;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.location_on_outlined),
              title: const Text('Default Address'),
              trailing: Icon(
                Icons.chevron_right,
                color: theme.colorScheme.outline,
              ),
              onTap: () {
                context.push(AccountRoutes.addresses);
              },
            ),

            if (address == null) ...[
              const SizedBox(height: 8),

              Text(
                'You have not added a shipping address yet.',
                style: theme.textTheme.bodyMedium,
              ),

              const SizedBox(height: 4),

              Text(
                'Add your first address to make checkout faster.',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
            ] else ...[
              const Divider(),

              const SizedBox(height: 12),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Chip(
                        visualDensity: VisualDensity.compact,
                        label: Text(
                          address!.label,
                          style: theme.textTheme.labelSmall,
                        ),
                      ),

                      const SizedBox(width: 12),

                      Expanded(
                        child: Text(
                          address!.recipientName,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 8),

                  Text(
                    address!.phone,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),

                  const SizedBox(height: 12),

                  Text(address!.addressLine),

                  const SizedBox(height: 4),

                  Text('${address!.districtName}, ${address!.cityName}'),

                  Text('${address!.provinceName} ${address!.postalCode}'),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}
