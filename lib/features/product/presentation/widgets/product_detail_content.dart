import 'package:commerce_flutter_storefront/features/product/presentation/providers/product_provider.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/widgets/product_carousel_section.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/widgets/product_description_section.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/widgets/product_info_section.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/widgets/product_variant_info_container.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/widgets/product_variant_selector_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductDetailContent extends ConsumerWidget {
  const ProductDetailContent({super.key, required this.productId});

  final int productId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product = ref.watch(productDetailProvider(productId));

    return switch (product) {
      AsyncLoading() => const Center(child: CircularProgressIndicator()),

      AsyncError() => const Center(child: Text('Failed to load product')),

      AsyncData(:final value) => CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: ProductImageCarouselSection(images: value.images),
          ),

          SliverToBoxAdapter(child: ProductInfoSection(product: value)),

          SliverToBoxAdapter(
            child: ProductVariantInfoContainer(
              productId: value.id,
              variantId: value.initialVariantId,
            ),
          ),

          SliverToBoxAdapter(
            child: ProductVariantSelectorSection(dimensions: value.dimensions),
          ),

          SliverToBoxAdapter(
            child: ProductDescriptionSection(description: value.description),
          ),

          const SliverToBoxAdapter(child: SizedBox(height: 32)),
        ],
      ),
    };
  }
}
