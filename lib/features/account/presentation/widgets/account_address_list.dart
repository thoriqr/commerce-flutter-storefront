import 'package:commerce_flutter_storefront/features/account/data/models/user_addresses.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_address_tile.dart';
import 'package:flutter/material.dart';

class AccountAddressList extends StatelessWidget {
  const AccountAddressList({
    super.key,
    required this.addresses,
    required this.onRefresh,
  });

  final UserAddresses addresses;
  final RefreshCallback onRefresh;

  @override
  Widget build(BuildContext context) {
    final canAdd = addresses.addresses.length < addresses.limit;

    return RefreshIndicator(
      onRefresh: onRefresh,
      child: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.all(16),
        children: [
          FilledButton.icon(
            onPressed: canAdd ? () {} : null,
            icon: const Icon(Icons.add),
            label: const Text('Add Address'),
          ),

          if (!canAdd) ...[
            const SizedBox(height: 8),

            Text(
              'You have reached the maximum number of addresses.',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],

          const SizedBox(height: 16),

          for (final address in addresses.addresses) ...[
            AccountAddressTile(address: address),
            const SizedBox(height: 12),
          ],
        ],
      ),
    );
  }
}
