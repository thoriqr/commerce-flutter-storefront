import 'package:commerce_flutter_storefront/core/utils/currency_utils.dart';
import 'package:commerce_flutter_storefront/features/product/data/models/product_variant_detail.dart';
import 'package:flutter/material.dart';

class ProductVariantInfoSection extends StatelessWidget {
  const ProductVariantInfoSection({super.key, required this.variant});

  final ProductVariantDetail variant;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
      child: Column(
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
      ),
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
