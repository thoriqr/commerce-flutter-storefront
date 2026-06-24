import 'package:commerce_flutter_storefront/features/product/domain/product_source.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/notifiers/product_listing_notifier.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/widgets/product_category_header_section.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/widgets/product_collection_header_section.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/widgets/product_grid_section.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/widgets/product_listing_toolbar_section.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/widgets/product_search_header_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductListingContent extends ConsumerStatefulWidget {
  const ProductListingContent({super.key, required this.source});

  final ProductSource source;

  @override
  ConsumerState<ProductListingContent> createState() =>
      _ProductListingContentState();
}

class _ProductListingContentState extends ConsumerState<ProductListingContent> {
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

  Widget _buildHeader() {
    switch (widget.source) {
      case CollectionSource(:final slug):
        return ProductCollectionHeaderSection(slug: slug);

      case CategorySource(:final slugPath):
        return ProductCategoryHeaderSection(slugPath: slugPath);

      case SearchSource(:final query):
        return ProductSearchHeaderSection(query: query);
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: _controller,
      slivers: [
        SliverToBoxAdapter(child: _buildHeader()),

        SliverToBoxAdapter(
          child: ProductListingToolbarSection(source: widget.source),
        ),

        ProductGridSection(source: widget.source),
      ],
    );
  }
}

class ProductToolbarHeaderDelegate extends SliverPersistentHeaderDelegate {
  ProductToolbarHeaderDelegate({required this.child});

  final Widget child;

  @override
  double get minExtent => 72;

  @override
  double get maxExtent => 72;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return child;
  }

  @override
  bool shouldRebuild(ProductToolbarHeaderDelegate oldDelegate) {
    return false;
  }
}
