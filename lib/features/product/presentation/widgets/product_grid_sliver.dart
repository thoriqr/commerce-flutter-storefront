import 'package:commerce_flutter_storefront/features/product/data/mocks/product_summary_mock.dart';
import 'package:commerce_flutter_storefront/features/product/data/models/product_summary.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/states/product_listing_state.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/widgets/product_listing_empty_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'product_card.dart';

class ProductGridSliver extends StatelessWidget {
  const ProductGridSliver({
    super.key,
    required this.listing,
    required this.onClearFilters,
  });

  final AsyncValue<ProductListingState> listing;
  final Future<void> Function() onClearFilters;

  @override
  Widget build(BuildContext context) {
    final state = switch (listing) {
      AsyncData(:final value) => value,
      _ => null,
    };

    final products = state?.products ?? ProductSummaryMock.items(6);

    final isLoadingMore = state?.isLoadingMore ?? false;

    final hasActiveFilters = (state?.activeFilterCount ?? 0) > 0;

    if (!listing.isLoading && products.isEmpty) {
      return SliverFillRemaining(
        hasScrollBody: false,
        child: ProductListingEmptyView(
          hasActiveFilters: hasActiveFilters,
          onClearFilters: onClearFilters,
        ),
      );
    }

    return Skeletonizer.sliver(
      enabled: listing.isLoading,
      child: _ProductGridSliver(
        products: products,
        isLoadingMore: isLoadingMore,
      ),
    );
  }
}

class _ProductGridSliver extends StatelessWidget {
  const _ProductGridSliver({
    required this.products,
    required this.isLoadingMore,
  });

  final List<ProductSummary> products;
  final bool isLoadingMore;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate((context, index) {
          if (index >= products.length) {
            return const Center(child: CircularProgressIndicator());
          }

          return ProductCard(product: products[index]);
        }, childCount: products.length + (isLoadingMore ? 1 : 0)),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 16,
          childAspectRatio: 0.70,
        ),
      ),
    );
  }
}
