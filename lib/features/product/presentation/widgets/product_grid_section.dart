import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/product_source.dart';
import '../notifiers/product_listing_notifier.dart';
import 'product_card.dart';
import 'product_card_skeleton.dart';

class ProductGridSection extends ConsumerWidget {
  const ProductGridSection({super.key, required this.source});

  final ProductSource source;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(productListingProvider(source));

    return products.when(
      loading: () => const _ProductGridSkeleton(),
      error: (_, _) => const Center(child: Text('Failed to load products')),
      data: (state) {
        return GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          itemCount: state.products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 16,
            childAspectRatio: 0.62,
          ),
          itemBuilder: (_, index) {
            return ProductCard(product: state.products[index]);
          },
        );
      },
    );
  }
}

class _ProductGridSkeleton extends StatelessWidget {
  const _ProductGridSkeleton();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: 6,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 16,
        childAspectRatio: 0.62,
      ),
      itemBuilder: (_, index) {
        return const ProductCardSkeleton();
      },
    );
  }
}
