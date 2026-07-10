import 'package:commerce_flutter_storefront/core/exceptions/app_exception.dart';
import 'package:commerce_flutter_storefront/core/router/account_routes.dart';
import 'package:commerce_flutter_storefront/features/account/data/models/user_addresses.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/mutations/account_mutations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AccountAddressTile extends ConsumerWidget {
  const AccountAddressTile({super.key, required this.address});

  final UserAddress address;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(accountMutationsProvider, (previous, next) {
      next.whenOrNull(
        error: (error, _) {
          final message = switch (error) {
            AppException e => e.message,
            _ => 'Something went wrong.',
          };

          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(message)));
        },
      );
    });

    final mutation = ref.watch(accountMutationsProvider);
    final isLoading = mutation.isLoading;

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
                TextButton.icon(
                  onPressed: isLoading
                      ? null
                      : () {
                          AccountRoutes.pushEditAddress(context, address.id);
                        },
                  icon: const Icon(Icons.edit_outlined, size: 18),
                  label: const Text('Edit'),
                ),

                const SizedBox(width: 12),

                TextButton.icon(
                  onPressed: isLoading
                      ? null
                      : () async {
                          final confirmed =
                              await showDialog<bool>(
                                context: context,
                                builder: (_) {
                                  return AlertDialog(
                                    title: const Text('Delete address?'),
                                    content: const Text(
                                      'This address will be permanently removed.',
                                    ),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context, false);
                                        },
                                        child: const Text('Cancel'),
                                      ),
                                      FilledButton(
                                        onPressed: () {
                                          Navigator.pop(context, true);
                                        },
                                        child: const Text('Delete'),
                                      ),
                                    ],
                                  );
                                },
                              ) ??
                              false;

                          if (!confirmed || !context.mounted) {
                            return;
                          }

                          await ref
                              .read(accountMutationsProvider.notifier)
                              .deleteAddress(address.id);
                        },
                  icon: const Icon(Icons.delete_outline, size: 18),
                  label: const Text('Delete'),
                ),

                const Spacer(),

                if (!address.isDefault)
                  FilledButton.tonal(
                    onPressed: isLoading
                        ? null
                        : () async {
                            await ref
                                .read(accountMutationsProvider.notifier)
                                .setDefaultAddress(address.id);
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
