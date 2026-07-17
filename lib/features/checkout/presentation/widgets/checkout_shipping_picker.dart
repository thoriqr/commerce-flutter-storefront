import 'package:commerce_flutter_storefront/core/utils/currency_utils.dart';
import 'package:commerce_flutter_storefront/features/checkout/constants/shipping_constants.dart';
import 'package:commerce_flutter_storefront/features/checkout/data/models/shipping_cost.dart';
import 'package:commerce_flutter_storefront/features/checkout/presentation/providers/checkout_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CheckoutShippingPicker extends ConsumerStatefulWidget {
  const CheckoutShippingPicker({super.key, required this.sessionId});

  final int sessionId;

  @override
  ConsumerState<CheckoutShippingPicker> createState() =>
      _CheckoutShippingPickerState();
}

class _CheckoutShippingPickerState
    extends ConsumerState<CheckoutShippingPicker> {
  ShippingCourier selectedCourier = ShippingCourier.jne;

  ShippingService? selectedService;

  bool isValidService(ShippingService service) {
    return service.name.trim().isNotEmpty &&
        service.code.trim().isNotEmpty &&
        service.service.trim().isNotEmpty &&
        service.description.trim().isNotEmpty &&
        service.etd.trim().isNotEmpty &&
        service.cost > 0;
  }

  Widget _buildLoading() {
    return Skeletonizer(
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: 3,
        separatorBuilder: (_, _) => const SizedBox(height: 12),
        itemBuilder: (_, _) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ignore: deprecated_member_use
                  const Radio(value: true, groupValue: false, onChanged: null),

                  const SizedBox(width: 8),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Expanded(child: Text('JNE REG')),

                            Text(CurrencyUtils.formatRupiah(12000)),
                          ],
                        ),

                        const SizedBox(height: 8),

                        const Text('Regular Service'),

                        const SizedBox(height: 4),

                        const Text('Estimated delivery: 2-3 days'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildError(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.error_outline, size: 48),

            const SizedBox(height: 16),

            Text(
              'Unable to load shipping services.',
              style: Theme.of(context).textTheme.titleMedium,
            ),

            const SizedBox(height: 8),

            Text(
              'Please try again or choose another courier.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),

            const SizedBox(height: 16),

            FilledButton(
              onPressed: () {
                ref.invalidate(
                  shippingCostProvider(widget.sessionId, selectedCourier.value),
                );
              },
              child: const Text('Try Again'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmpty(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.local_shipping_outlined, size: 48),

            const SizedBox(height: 16),

            Text(
              'No shipping services available.',
              style: Theme.of(context).textTheme.titleMedium,
            ),

            const SizedBox(height: 8),

            Text(
              'Please try another courier.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final shippingAsync = ref.watch(
      shippingCostProvider(widget.sessionId, selectedCourier.value),
    );

    return SafeArea(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .8,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Text(
                    'Choose Shipping',
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

            SizedBox(
              height: 48,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: [
                  for (final courier in ShippingCourier.values)
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: ChoiceChip(
                        label: Text(courier.label),
                        selected: selectedCourier == courier,
                        onSelected: (_) {
                          setState(() {
                            selectedCourier = courier;
                            selectedService = null;
                          });
                        },
                      ),
                    ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            Expanded(
              child: switch (shippingAsync) {
                AsyncLoading() => _buildLoading(),

                AsyncError() => _buildError(context),

                AsyncData(:final value) => () {
                  final services = value.services
                      .where(isValidService)
                      .toList();

                  if (services.isEmpty) {
                    return _buildEmpty(context);
                  }

                  return RadioGroup<ShippingService>(
                    groupValue: selectedService,
                    onChanged: (value) {
                      if (value == null) {
                        return;
                      }

                      setState(() {
                        selectedService = value;
                      });
                    },
                    child: ListView.separated(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      itemCount: services.length,
                      separatorBuilder: (_, _) => const SizedBox(height: 12),
                      itemBuilder: (_, index) {
                        final service = services[index];

                        return Card(
                          child: InkWell(
                            borderRadius: BorderRadius.circular(12),
                            onTap: () {
                              setState(() {
                                selectedService = service;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Radio<ShippingService>(
                                    value: service,
                                    // ignore: deprecated_member_use
                                    groupValue: selectedService,
                                    // ignore: deprecated_member_use
                                    onChanged: (value) {
                                      if (value == null) {
                                        return;
                                      }

                                      setState(() {
                                        selectedService = value;
                                      });
                                    },
                                  ),

                                  const SizedBox(width: 8),

                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                '${service.code.toUpperCase()} ${service.service}',
                                                style: Theme.of(
                                                  context,
                                                ).textTheme.titleMedium,
                                              ),
                                            ),

                                            Text(
                                              CurrencyUtils.formatRupiah(
                                                service.cost,
                                              ),
                                              style: Theme.of(
                                                context,
                                              ).textTheme.titleSmall,
                                            ),
                                          ],
                                        ),

                                        const SizedBox(height: 8),

                                        Text(
                                          service.description,
                                          style: Theme.of(
                                            context,
                                          ).textTheme.bodyMedium,
                                        ),

                                        const SizedBox(height: 4),

                                        Text(
                                          'Estimated delivery: ${service.etd}',
                                          style: Theme.of(
                                            context,
                                          ).textTheme.bodySmall,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  );
                }(),
              },
            ),

            Padding(
              padding: const EdgeInsets.all(16),
              child: SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: switch (shippingAsync) {
                    AsyncData(:final value) =>
                      selectedService != null &&
                              value.services.where(isValidService).isNotEmpty
                          ? () {
                              Navigator.pop(context, selectedService);
                            }
                          : null,

                    _ => null,
                  },
                  child: const Text('Select Shipping'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
