import 'package:commerce_flutter_storefront/core/exceptions/app_exception.dart';
import 'package:commerce_flutter_storefront/core/utils/currency_utils.dart';
import 'package:commerce_flutter_storefront/core/utils/image_utils.dart';
import 'package:commerce_flutter_storefront/features/cart/data/models/cart.dart';
import 'package:commerce_flutter_storefront/features/cart/presentation/mutations/cart_mutations.dart';
import 'package:commerce_flutter_storefront/features/cart/presentation/widgets/cart_warning_banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CartItemTile extends ConsumerWidget {
  const CartItemTile({super.key, required this.item, required this.enabled});

  final CartItem item;
  final bool enabled;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(cartMutationsProvider, (previous, next) {
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

    final optionText = item.options
        .map((e) => '${e.dimension}: ${e.value}')
        .join(' • ');

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 88,
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Skeleton.replace(
                        child: Image.network(
                          ImageUtils.buildUrl(item.imageKey),
                          fit: BoxFit.cover,
                          errorBuilder: (_, _, _) {
                            return ColoredBox(
                              color: Theme.of(
                                context,
                              ).colorScheme.surfaceContainer,
                            );
                          },
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
                        item.name,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),

                      if (optionText.isNotEmpty) ...[
                        const SizedBox(height: 4),

                        Text(
                          optionText,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],

                      const SizedBox(height: 4),

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

                        CartWarningBanner(
                          warning: item.warning!,
                          stock: item.stock,
                        ),
                      ],
                    ],
                  ),
                ),

                IconButton(
                  onPressed: enabled
                      ? () {
                          ref
                              .read(cartMutationsProvider.notifier)
                              .deleteItem(variantId: item.variantId);
                        }
                      : null,
                  icon: const Icon(Icons.delete_outline),
                ),
              ],
            ),

            const SizedBox(height: 16),

            Row(
              children: [
                const Spacer(),

                OutlinedButton(
                  onPressed: !enabled || item.quantity <= 1
                      ? null
                      : () {
                          ref
                              .read(cartMutationsProvider.notifier)
                              .updateItem(
                                variantId: item.variantId,
                                quantity: item.quantity - 1,
                              );
                        },
                  child: const Icon(Icons.remove),
                ),

                SizedBox(
                  width: 48,
                  child: Center(
                    child: Text(
                      item.quantity.toString(),
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                ),

                OutlinedButton(
                  onPressed:
                      !enabled ||
                          !item.isAvailable ||
                          item.quantity >= item.stock
                      ? null
                      : () {
                          ref
                              .read(cartMutationsProvider.notifier)
                              .updateItem(
                                variantId: item.variantId,
                                quantity: item.quantity + 1,
                              );
                        },
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
