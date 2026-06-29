import 'package:commerce_flutter_storefront/features/product/data/models/product_detail.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/providers/product_provider.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/widgets/product_variant_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:commerce_flutter_storefront/features/product/data/mocks/product_variant_detail_mock.dart';

class ProductBottomBar extends ConsumerWidget {
  const ProductBottomBar({
    super.key,
    required this.productId,
    required this.variantId,
    required this.productIsAvailable,
    required this.productWarning,
    required this.productLoading,
  });

  final int productId;
  final int variantId;

  final bool productIsAvailable;
  final ProductDetailWarning? productWarning;

  final bool productLoading;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final variantAsync = ref.watch(
      productVariantDetailProvider(productId, variantId),
    );

    final variant = switch (variantAsync) {
      AsyncData(:final value) => value,
      _ => ProductVariantDetailMock.item(),
    };

    final loading = productLoading || variantAsync.isLoading;

    final canAddToCart = productIsAvailable && variant.isAvailable;

    return SafeArea(
      top: false,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          border: Border(
            top: BorderSide(color: Theme.of(context).dividerColor),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductVariantInfo(
              productId: productId,
              variantId: variantId,
              productWarning: productWarning,
            ),

            const SizedBox(height: 12),

            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).colorScheme.outline,
                    ),
                    borderRadius: BorderRadius.circular(999),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: canAddToCart ? () {} : null,
                        icon: const Icon(Icons.remove),
                      ),

                      const SizedBox(
                        width: 24,
                        child: Center(child: Text('1')),
                      ),

                      IconButton(
                        onPressed: canAddToCart ? () {} : null,
                        icon: const Icon(Icons.add),
                      ),
                    ],
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: FilledButton(
                    style: FilledButton.styleFrom(
                      minimumSize: const Size.fromHeight(52),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(999),
                      ),
                    ),
                    onPressed: loading
                        ? null
                        : canAddToCart
                        ? () {}
                        : null,
                    child: const Text('Add to Cart'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
