import 'package:commerce_flutter_storefront/features/product/data/models/product_detail.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/widgets/product_carousel_section.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/widgets/product_description_section.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/widgets/product_info_section.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/widgets/product_variant_info.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/widgets/product_variant_selector_section.dart';
import 'package:flutter/material.dart';

class ProductDetailContent extends StatelessWidget {
  const ProductDetailContent({
    super.key,
    required this.product,
    required this.selectedVariantId,
  });

  final ProductDetail product;
  final int selectedVariantId;

  @override
  Widget build(BuildContext context) {
    final selectedVariant = product.variants.firstWhere(
      (variant) => variant.id == selectedVariantId,
    );

    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: ProductImageCarouselSection(
            product: product,
            selectedVariantId: selectedVariantId,
          ),
        ),

        SliverToBoxAdapter(child: ProductInfoSection(product: product)),

        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
            child: ProductVariantInfo(
              productId: product.id,
              variantId: selectedVariantId,
            ),
          ),
        ),

        SliverToBoxAdapter(
          child: ProductVariantSelectorSection(
            product: product,
            selectedVariant: selectedVariant,
          ),
        ),

        SliverToBoxAdapter(
          child: ProductDescriptionSection(description: product.description),
        ),

        const SliverToBoxAdapter(child: SizedBox(height: 32)),
      ],
    );
  }
}
