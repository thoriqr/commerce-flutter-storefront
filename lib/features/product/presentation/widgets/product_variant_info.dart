import 'package:commerce_flutter_storefront/core/utils/currency_utils.dart';
import 'package:commerce_flutter_storefront/features/product/data/models/product_variant_detail.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/providers/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductVariantInfo extends ConsumerWidget {
  const ProductVariantInfo({
    super.key,
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
      AsyncLoading() => const _Skeleton(),

      AsyncError() => const SizedBox.shrink(),

      AsyncData(:final value) => _Content(variant: value),
    };
  }
}

class _Content extends StatelessWidget {
  const _Content({required this.variant});

  final ProductVariantDetail variant;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          CurrencyUtils.formatRupiah(variant.price),
          style: theme.textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),

        const SizedBox(height: 4),

        Text(
          _stockLabel(variant),
          style: theme.textTheme.bodyMedium?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }

  String _stockLabel(ProductVariantDetail variant) {
    switch (variant.warning) {
      case ProductVariantDetailWarning.outOfStock:
        return 'Out of stock';

      case ProductVariantDetailWarning.lowStock:
        return 'Only ${variant.stock} left';

      case ProductVariantDetailWarning.unavailable:
        return 'Unavailable';

      case null:
        return '${variant.stock} available';
    }
  }
}

class _Skeleton extends StatelessWidget {
  const _Skeleton();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        width: 20,
        height: 20,
        child: CircularProgressIndicator(strokeWidth: 2),
      ),
    );
  }
}
