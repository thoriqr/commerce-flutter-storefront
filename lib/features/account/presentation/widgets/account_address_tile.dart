import 'package:commerce_flutter_storefront/core/extensions/widget_ref_extension.dart';
import 'package:commerce_flutter_storefront/core/router/account_routes.dart';
import 'package:commerce_flutter_storefront/features/account/data/models/user_addresses.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/mutations/delete_address_mutation.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/mutations/set_default_address_mutation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AccountAddressTile extends ConsumerWidget {
  const AccountAddressTile({super.key, required this.address});

  final UserAddress address;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listenMutationError(deleteAddressMutationProvider, context);

    ref.listenMutationError(setDefaultAddressMutationProvider, context);

    final deleteMutation = ref.watch(deleteAddressMutationProvider);
    final setDefaultMutation = ref.watch(setDefaultAddressMutationProvider);

    final isDeleting = deleteMutation.isLoading;
    final isSettingDefault = setDefaultMutation.isLoading;

    final isBusy = isDeleting || isSettingDefault;

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
                  onPressed: isBusy
                      ? null
                      : () {
                          AccountRoutes.pushEditAddress(context, address.id);
                        },
                  icon: const Icon(Icons.edit_outlined, size: 18),
                  label: const Text('Edit'),
                ),

                const SizedBox(width: 12),

                TextButton.icon(
                  onPressed: isBusy
                      ? null
                      : () async {
                          final confirmed =
                              await showDialog<bool>(
                                context: context,
                                builder: (dialogContext) {
                                  return AlertDialog(
                                    title: const Text('Delete address?'),
                                    content: const Text(
                                      'This address will be permanently removed.',
                                    ),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(dialogContext, false);
                                        },
                                        child: const Text('Cancel'),
                                      ),
                                      FilledButton(
                                        onPressed: () {
                                          Navigator.pop(dialogContext, true);
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

                          ref
                              .read(deleteAddressMutationProvider.notifier)
                              .mutate(address.id);
                        },
                  icon: isDeleting
                      ? const SizedBox(
                          width: 18,
                          height: 18,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : const Icon(Icons.delete_outline, size: 18),
                  label: const Text('Delete'),
                ),

                const Spacer(),

                if (!address.isDefault)
                  FilledButton.tonal(
                    onPressed: isBusy
                        ? null
                        : () {
                            ref
                                .read(
                                  setDefaultAddressMutationProvider.notifier,
                                )
                                .mutate(address.id);
                          },
                    child: isSettingDefault
                        ? const SizedBox(
                            width: 18,
                            height: 18,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : const Text('Set Default'),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
