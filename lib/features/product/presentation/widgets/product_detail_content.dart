import 'package:commerce_flutter_storefront/features/product/data/models/product_detail.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/widgets/product_image_carousel.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/widgets/product_variant_info.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/widgets/product_variant_selector.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

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
          child: ProductImageCarousel(
            product: product,
            selectedVariantId: selectedVariantId,
          ),
        ),

        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Text(
              product.name,
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w700),
            ),
          ),
        ),

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
          child: ProductVariantSelector(
            product: product,
            selectedVariant: selectedVariant,
          ),
        ),

        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
            child: ReadMoreText(
              product.description,
              trimMode: TrimMode.Line,
              trimLines: 4,
              trimCollapsedText: ' Read More',
              trimExpandedText: ' Show Less',
              style: Theme.of(context).textTheme.bodyMedium,
              moreStyle: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.w600,
              ),
              lessStyle: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),

        const SliverToBoxAdapter(child: SizedBox(height: 32)),
      ],
    );
  }
}
