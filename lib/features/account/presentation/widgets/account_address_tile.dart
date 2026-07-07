import 'package:commerce_flutter_storefront/core/router/account_routes.dart';
import 'package:commerce_flutter_storefront/features/account/data/models/user_addresses.dart';
import 'package:flutter/material.dart';

class AccountAddressTile extends StatelessWidget {
  const AccountAddressTile({super.key, required this.address});

  final UserAddress address;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    address.label,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),

                if (address.isDefault) const Chip(label: Text('Default')),
              ],
            ),

            const SizedBox(height: 8),

            Text(
              address.recipientName,
              style: Theme.of(context).textTheme.titleSmall,
            ),

            const SizedBox(height: 4),

            Text(address.phone),

            const SizedBox(height: 8),

            Text(
              '${address.addressLine}\n'
              '${address.districtName}, ${address.cityName}\n'
              '${address.provinceName} ${address.postalCode}',
            ),

            const SizedBox(height: 16),

            Row(
              children: [
                TextButton(
                  onPressed: () {
                    AccountRoutes.pushEditAddress(context, address.id);
                  },
                  child: const Text('Edit'),
                ),

                const SizedBox(width: 8),

                TextButton(
                  onPressed: () {
                    // TODO:
                    // Delete address confirmation.
                  },
                  child: const Text('Delete'),
                ),

                const Spacer(),

                if (!address.isDefault)
                  FilledButton.tonal(
                    onPressed: () {
                      // TODO:
                      // Set default address.
                    },
                    child: const Text('Set Default'),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
