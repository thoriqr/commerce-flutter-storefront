import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:commerce_flutter_storefront/features/product/presentation/providers/product_provider.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/widgets/skeleton/product_variant_info_skeleton.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/widgets/product_variant_info_section.dart';

class ProductVariantInfoContainer extends ConsumerWidget {
  const ProductVariantInfoContainer({
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
      AsyncLoading() => const ProductVariantInfoSkeleton(),

      AsyncError() => const SizedBox.shrink(),

      AsyncData(:final value) => ProductVariantInfoSection(variant: value),
    };
  }
}
