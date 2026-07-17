import 'package:commerce_flutter_storefront/core/utils/currency_utils.dart';
import 'package:commerce_flutter_storefront/core/utils/image_utils.dart';
import 'package:commerce_flutter_storefront/features/checkout/data/models/checkout_session.dart';
import 'package:flutter/material.dart';

class CheckoutItemTile extends StatelessWidget {
  const CheckoutItemTile({super.key, required this.item});

  final CheckoutItem item;

  @override
  Widget build(BuildContext context) {
    final optionText = item.options
        .map((e) => '${e.dimension}: ${e.value}')
        .join(' • ');

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 88,
              child: AspectRatio(
                aspectRatio: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: item.imageKey != null
                      ? Image.network(
                          ImageUtils.buildUrl(item.imageKey!),
                          fit: BoxFit.cover,
                          errorBuilder: (_, _, _) {
                            return ColoredBox(
                              color: Theme.of(
                                context,
                              ).colorScheme.surfaceContainer,
                              child: const Center(
                                child: Icon(Icons.image_not_supported_outlined),
                              ),
                            );
                          },
                        )
                      : ColoredBox(
                          color: Theme.of(context).colorScheme.surfaceContainer,
                          child: const Center(
                            child: Icon(Icons.image_not_supported_outlined),
                          ),
                        ),
                ),
              ),
            ),

            const SizedBox(width: 16),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.productName,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),

                  if (optionText.isNotEmpty) ...[
                    const SizedBox(height: 4),

                    Text(
                      optionText,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],

                  const SizedBox(height: 8),

                  Text(
                    'Quantity: ${item.quantity}',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),

                  Text(
                    'Stock: ${item.stock}',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),

                  const SizedBox(height: 8),

                  Text(
                    CurrencyUtils.formatRupiah(item.price),
                    style: Theme.of(context).textTheme.titleMedium,
                  ),

                  if (item.warning != null) ...[
                    const SizedBox(height: 8),

                    CheckoutWarningBanner(
                      warning: item.warning!,
                      stock: item.stock,
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CheckoutWarningBanner extends StatelessWidget {
  const CheckoutWarningBanner({
    super.key,
    required this.warning,
    required this.stock,
  });

  final CheckoutItemWarning warning;
  final int stock;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final message = switch (warning) {
      CheckoutItemWarning.unavailable => 'This item is no longer available.',
      CheckoutItemWarning.insufficientStock =>
        'Only $stock item(s) are currently available.',
    };

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: theme.colorScheme.errorContainer,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.warning_amber_rounded,
            color: theme.colorScheme.onErrorContainer,
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Text(
              message,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onErrorContainer,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
