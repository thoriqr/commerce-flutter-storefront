import 'package:commerce_flutter_storefront/core/router/account_routes.dart';
import 'package:commerce_flutter_storefront/features/account/data/models/user_addresses.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/providers/account_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class CheckoutAddressPicker extends ConsumerWidget {
  const CheckoutAddressPicker({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final addresses = ref.watch(userAddressesProvider);

    return SafeArea(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .75,
        child: switch (addresses) {
          AsyncLoading() => const Center(child: CircularProgressIndicator()),

          AsyncError() => Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Unable to load addresses.'),

                const SizedBox(height: 16),

                FilledButton(
                  onPressed: () {
                    ref.invalidate(userAddressesProvider);
                  },
                  child: const Text('Try Again'),
                ),
              ],
            ),
          ),

          AsyncData(:final value) => _AddressPickerContent(addresses: value),
        },
      ),
    );
  }
}

class _AddressPickerContent extends StatelessWidget {
  const _AddressPickerContent({required this.addresses});

  final UserAddresses addresses;

  @override
  Widget build(BuildContext context) {
    final canAdd = addresses.addresses.length < addresses.limit;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Text(
                'Choose Address',
                style: Theme.of(context).textTheme.titleLarge,
              ),

              const Spacer(),

              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.close),
              ),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: FilledButton.icon(
            onPressed: canAdd
                ? () async {
                    final addressId = await context.push<int>(
                      AccountRoutes.addressNew,
                    );

                    if (addressId == null || !context.mounted) {
                      return;
                    }

                    Navigator.pop(context, addressId);
                  }
                : null,
            icon: const Icon(Icons.add),
            label: const Text('Create Address'),
          ),
        ),

        const SizedBox(height: 16),

        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: addresses.addresses.length,
            separatorBuilder: (_, _) => const SizedBox(height: 12),
            itemBuilder: (_, index) {
              final address = addresses.addresses[index];

              return Card(
                child: ListTile(
                  title: Text(address.label),
                  subtitle: Text(
                    '${address.recipientName}\n'
                    '${address.addressLine}',
                  ),
                  trailing: address.isDefault
                      ? const Chip(label: Text('Default'))
                      : null,
                  onTap: () {
                    Navigator.pop(context, address.id);
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
