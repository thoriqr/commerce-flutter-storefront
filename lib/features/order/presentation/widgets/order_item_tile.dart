import 'package:commerce_flutter_storefront/core/utils/currency_utils.dart';
import 'package:commerce_flutter_storefront/core/utils/image_utils.dart';
import 'package:commerce_flutter_storefront/features/order/data/models/order_detail.dart';
import 'package:flutter/material.dart';

class OrderItemTile extends StatelessWidget {
  const OrderItemTile({super.key, required this.item});

  final OrderItem item;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OrderItemImage(imageKey: item.imageKey),

            const SizedBox(width: 16),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleSmall,
                  ),

                  if (item.options.isNotEmpty) ...[
                    const SizedBox(height: 8),

                    Wrap(
                      spacing: 4,
                      runSpacing: 4,
                      children: [
                        for (final option in item.options)
                          Text(
                            '${option.dimension}: '
                            '${option.value}',
                            style: theme.textTheme.bodySmall,
                          ),
                      ],
                    ),
                  ],

                  const SizedBox(height: 12),

                  Row(
                    children: [
                      Text(
                        'Qty ${item.quantity}',
                        style: theme.textTheme.bodyMedium,
                      ),

                      const Spacer(),

                      Text(
                        CurrencyUtils.formatRupiah(item.price),
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OrderItemImage extends StatelessWidget {
  const OrderItemImage({super.key, required this.imageKey});

  final String? imageKey;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: SizedBox(
        width: 80,
        height: 80,
        child: imageKey == null
            ? DecoratedBox(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainerHighest,
                ),
                child: const Icon(Icons.image_not_supported),
              )
            : Image.network(
                ImageUtils.buildUrl(imageKey!),
                fit: BoxFit.cover,
                errorBuilder: (_, _, _) {
                  return DecoratedBox(
                    decoration: BoxDecoration(
                      color: Theme.of(
                        context,
                      ).colorScheme.surfaceContainerHighest,
                    ),
                    child: const Icon(Icons.broken_image),
                  );
                },
              ),
      ),
    );
  }
}
