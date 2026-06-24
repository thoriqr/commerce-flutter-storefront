import 'package:commerce_flutter_storefront/features/product/presentation/states/product_listing_state.dart';
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
    final listing = ref.watch(productListingProvider(source));

    return switch (listing) {
      AsyncLoading() => const _ProductGridSkeletonSliver(),

      AsyncError() => const SliverFillRemaining(
        child: Center(child: Text('Failed to load products')),
      ),

      AsyncData(:final value) => _ProductGridSliver(state: value),
    };
  }
}

class _ProductGridSliver extends StatelessWidget {
  const _ProductGridSliver({required this.state});

  final ProductListingState state;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate((context, index) {
          if (index >= state.products.length) {
            return const Center(child: CircularProgressIndicator());
          }

          return ProductCard(product: state.products[index]);
        }, childCount: state.products.length + (state.isLoadingMore ? 1 : 0)),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 16,
          childAspectRatio: 0.62,
        ),
      ),
    );
  }
}

class _ProductGridSkeletonSliver extends StatelessWidget {
  const _ProductGridSkeletonSliver();

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(
          (_, _) => const ProductCardSkeleton(),
          childCount: 6,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 16,
          childAspectRatio: 0.62,
        ),
      ),
    );
  }
}
