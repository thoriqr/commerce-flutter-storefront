import 'package:commerce_flutter_storefront/core/router/account_routes.dart';
import 'package:commerce_flutter_storefront/core/router/app_routes.dart';
import 'package:commerce_flutter_storefront/features/account/constants/upsert_address_arguments.dart';
import 'package:commerce_flutter_storefront/features/auth/constants/login_redirect.dart';
import 'package:commerce_flutter_storefront/features/checkout/data/models/checkout_session.dart';
import 'package:commerce_flutter_storefront/features/checkout/data/models/set_checkout_address_request.dart';
import 'package:commerce_flutter_storefront/features/checkout/presentation/mutations/set_checkout_address_mutation.dart';
import 'package:commerce_flutter_storefront/features/checkout/presentation/widgets/checkout_address_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class CheckoutAddressCard extends ConsumerWidget {
  const CheckoutAddressCard({
    super.key,
    required this.sessionId,
    required this.address,
  });

  final int sessionId;
  final CheckoutUserAddress? address;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    final mutation = ref.watch(setCheckoutAddressMutationProvider);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: address == null
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Shipping Address', style: theme.textTheme.titleMedium),

                  const SizedBox(height: 12),

                  Text(
                    'Add an address to continue with checkout.',
                    style: theme.textTheme.bodyMedium,
                  ),

                  const SizedBox(height: 16),

                  OutlinedButton(
                    onPressed: mutation.isLoading
                        ? null
                        : () {
                            context.push(
                              AccountRoutes.addressNew,
                              extra: UpsertAddressArguments(
                                loginRedirect: LoginRedirect(
                                  AppRoutes.checkoutSession(sessionId),
                                  requiresSameUser: true,
                                ),
                                onCreated: (int addressId) async {
                                  await ref
                                      .read(
                                        setCheckoutAddressMutationProvider
                                            .notifier,
                                      )
                                      .setAddressCheckoutSession(
                                        sessionId,
                                        SetCheckoutAddressRequest(
                                          addressId: addressId,
                                        ),
                                      );
                                },
                              ),
                            );
                          },
                    child: mutation.isLoading
                        ? const SizedBox(
                            width: 18,
                            height: 18,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : const Text('Create Address'),
                  ),
                ],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Shipping Address',
                        style: theme.textTheme.titleMedium,
                      ),

                      const Spacer(),

                      TextButton(
                        onPressed: mutation.isLoading
                            ? null
                            : () async {
                                final addressId =
                                    await showModalBottomSheet<int>(
                                      context: context,
                                      isScrollControlled: true,
                                      builder: (_) {
                                        return CheckoutAddressPicker(
                                          sessionId: sessionId,
                                        );
                                      },
                                    );

                                if (addressId == null || !context.mounted) {
                                  return;
                                }

                                await ref
                                    .read(
                                      setCheckoutAddressMutationProvider
                                          .notifier,
                                    )
                                    .setAddressCheckoutSession(
                                      sessionId,
                                      SetCheckoutAddressRequest(
                                        addressId: addressId,
                                      ),
                                    );
                              },
                        child: mutation.isLoading
                            ? const SizedBox(
                                width: 18,
                                height: 18,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                ),
                              )
                            : const Text('Change'),
                      ),
                    ],
                  ),

                  const SizedBox(height: 8),

                  Text(
                    address!.recipientName,
                    style: theme.textTheme.titleSmall,
                  ),

                  const SizedBox(height: 4),

                  Text(address!.phone),

                  const SizedBox(height: 8),

                  Text(address!.addressLine),

                  const SizedBox(height: 4),

                  Text(
                    [
                      address!.districtName,
                      address!.cityName,
                      address!.provinceName,
                      address!.postalCode,
                    ].join(', '),
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
      ),
    );
  }
}
