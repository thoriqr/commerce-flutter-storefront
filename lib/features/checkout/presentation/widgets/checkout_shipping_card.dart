import 'package:commerce_flutter_storefront/core/utils/currency_utils.dart';
import 'package:commerce_flutter_storefront/features/checkout/data/models/checkout_session.dart';
import 'package:commerce_flutter_storefront/features/checkout/data/models/set_shipping_request.dart';
import 'package:commerce_flutter_storefront/features/checkout/data/models/shipping_cost.dart';
import 'package:commerce_flutter_storefront/features/checkout/presentation/mutations/set_checkout_shipping_mutation.dart';
import 'package:commerce_flutter_storefront/features/checkout/presentation/widgets/checkout_shipping_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CheckoutShippingCard extends ConsumerWidget {
  const CheckoutShippingCard({super.key, required this.checkout});

  final CheckoutSession checkout;

  bool get hasShipping {
    return checkout.courierCode != null &&
        checkout.courierName != null &&
        checkout.courierService != null &&
        checkout.shippingEtd != null &&
        checkout.shippingEtd!.isNotEmpty;
  }

  Future<void> _showShippingPicker(BuildContext context, WidgetRef ref) async {
    final service = await showModalBottomSheet<ShippingService>(
      context: context,
      isScrollControlled: true,
      builder: (_) {
        return CheckoutShippingPicker(sessionId: checkout.sessionId);
      },
    );

    if (service == null || !context.mounted) {
      return;
    }

    await ref
        .read(setCheckoutShippingMutationProvider.notifier)
        .setShippingCheckoutSession(
          checkout.sessionId,
          SetShippingRequest(
            courierCode: service.code,
            courierService: service.service,
          ),
        );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    final mutation = ref.watch(setCheckoutShippingMutationProvider);

    final canSelectShipping =
        checkout.address != null &&
        checkout.reason != CheckoutBlockReason.noAddress;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: hasShipping
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Shipping Method',
                        style: theme.textTheme.titleMedium,
                      ),

                      const Spacer(),

                      TextButton(
                        onPressed: mutation.isLoading || !canSelectShipping
                            ? null
                            : () {
                                _showShippingPicker(context, ref);
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
                    '${checkout.courierName} - '
                    '${checkout.courierService}',
                    style: theme.textTheme.titleSmall,
                  ),

                  const SizedBox(height: 4),

                  Text(
                    'Estimated delivery: ${checkout.shippingEtd}',
                    style: theme.textTheme.bodySmall,
                  ),

                  const SizedBox(height: 8),

                  Text(
                    CurrencyUtils.formatRupiah(checkout.shippingCost),
                    style: theme.textTheme.titleMedium,
                  ),
                ],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Shipping Method', style: theme.textTheme.titleMedium),

                  const SizedBox(height: 12),

                  Text(
                    canSelectShipping
                        ? 'Select a shipping option to continue.'
                        : 'Please add a shipping address first.',
                    style: theme.textTheme.bodyMedium,
                  ),

                  const SizedBox(height: 16),
                  OutlinedButton(
                    onPressed: mutation.isLoading || !canSelectShipping
                        ? null
                        : () {
                            _showShippingPicker(context, ref);
                          },
                    child: mutation.isLoading
                        ? const SizedBox(
                            width: 18,
                            height: 18,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : const Text('Select Shipping'),
                  ),
                ],
              ),
      ),
    );
  }
}
