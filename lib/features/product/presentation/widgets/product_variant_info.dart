import 'package:commerce_flutter_storefront/core/utils/currency_utils.dart';
import 'package:commerce_flutter_storefront/features/product/data/models/product_variant_detail.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/providers/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:commerce_flutter_storefront/features/product/data/mocks/product_variant_detail_mock.dart';

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
    final variantAsync = ref.watch(
      productVariantDetailProvider(productId, variantId),
    );

    if (variantAsync.hasError) {
      return const SizedBox.shrink();
    }

    final variant = switch (variantAsync) {
      AsyncData(:final value) => value,
      _ => ProductVariantDetailMock.item(),
    };

    return Skeletonizer(
      enabled: variantAsync.isLoading,
      child: _Content(variant: variant),
    );
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
          _stockLabel(),
          style: theme.textTheme.bodyMedium?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }

  String _stockLabel() {
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
