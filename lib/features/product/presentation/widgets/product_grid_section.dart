import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/product_source.dart';
import '../notifiers/product_listing_notifier.dart';
import 'product_card.dart';
import 'product_card_skeleton.dart';

class ProductGridSection extends ConsumerStatefulWidget {
  const ProductGridSection({super.key, required this.source});

  final ProductSource source;

  @override
  ConsumerState<ProductGridSection> createState() => _ProductGridSectionState();
}

class _ProductGridSectionState extends ConsumerState<ProductGridSection> {
  late final ScrollController _controller;

  @override
  void initState() {
    super.initState();

    _controller = ScrollController()..addListener(_onScroll);
  }

  void _onScroll() {
    if (!_controller.hasClients) return;

    final position = _controller.position;

    if (position.pixels >= position.maxScrollExtent - 300) {
      ref.read(productListingProvider(widget.source).notifier).loadMore();
    }
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final products = ref.watch(productListingProvider(widget.source));

    return products.when(
      loading: () => const _ProductGridSkeleton(),
      error: (_, _) => const Center(child: Text('Failed to load products')),
      data: (state) {
        return GridView.builder(
          controller: _controller,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          itemCount: state.products.length + (state.isLoadingMore ? 1 : 0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 16,
            childAspectRatio: 0.62,
          ),
          itemBuilder: (_, index) {
            if (index >= state.products.length) {
              return const Center(child: CircularProgressIndicator());
            }

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
