import 'package:commerce_flutter_storefront/features/product/data/models/product_variant_detail.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/providers/product_provider.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/widgets/product_variant_info_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductBottomBar extends ConsumerWidget {
  const ProductBottomBar({super.key, required this.productId});

  final int productId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product = ref.watch(productDetailProvider(productId));

    return switch (product) {
      AsyncLoading() => const SizedBox(
        height: 120,
        child: Center(child: CircularProgressIndicator()),
      ),

      AsyncError() => const SizedBox.shrink(),

      AsyncData(:final value) => _ProductBottomBarVariant(
        productId: value.id,
        variantId: value.initialVariantId,
      ),
    };
  }
}

class _ProductBottomBarVariant extends ConsumerWidget {
  const _ProductBottomBarVariant({
    required this.productId,
    required this.variantId,
  });

  final int productId;
  final int variantId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final variant = ref.watch(
      productVariantDetailProvider(productId, variantId),
    );

    return switch (variant) {
      AsyncLoading() => const SizedBox(
        height: 120,
        child: Center(child: CircularProgressIndicator()),
      ),

      AsyncError() => const SizedBox.shrink(),

      AsyncData(:final value) => _BottomBarContent(variant: value),
    };
  }
}

class _BottomBarContent extends StatelessWidget {
  const _BottomBarContent({required this.variant});

  final ProductVariantDetail variant;

  @override
  Widget build(BuildContext context) {
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
            ProductVariantInfoSection(variant: variant),

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
                        onPressed: () {},
                        icon: const Icon(Icons.remove),
                      ),

                      const Text('1'),

                      IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                    ],
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: FilledButton(
                    onPressed: () {},
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
