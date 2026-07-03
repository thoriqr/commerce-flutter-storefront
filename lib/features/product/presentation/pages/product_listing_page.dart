import 'package:commerce_flutter_storefront/core/router/app_routes.dart';
import 'package:commerce_flutter_storefront/features/category/presentation/providers/category_provider.dart';
import 'package:commerce_flutter_storefront/features/category/presentation/widgets/category_header.dart';
import 'package:commerce_flutter_storefront/features/collection/presentation/providers/collection_provider.dart';
import 'package:commerce_flutter_storefront/features/collection/presentation/widgets/collection_header.dart';
import 'package:commerce_flutter_storefront/features/product/domain/product_source.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/controllers/product_listing_controller.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/widgets/product_grid.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/widgets/product_listing_toolbar.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/widgets/product_search_header.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/app_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:commerce_flutter_storefront/features/collection/data/mocks/collection_detail_mock.dart';
import 'package:commerce_flutter_storefront/features/category/data/mocks/category_detail_mock.dart';

class ProductListingPage extends ConsumerStatefulWidget {
  const ProductListingPage({super.key, required this.source});

  final ProductSource source;

  @override
  ConsumerState<ProductListingPage> createState() => _ProductListingPageState();
}

class _ProductListingPageState extends ConsumerState<ProductListingPage> {
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
      ref
          .read(productListingControllerProvider(widget.source).notifier)
          .loadMore();
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
        final collection = ref.watch(collectionDetailProvider(slug));

        return Skeletonizer(
          enabled: collection.isLoading,
          child: CollectionHeader(
            collection: switch (collection) {
              AsyncData(:final value) => value,
              _ => CollectionDetailMock.item(),
            },
          ),
        );

      case CategorySource(:final slugPath):
        final category = ref.watch(categoryDetailProvider(slugPath));
        return Skeletonizer(
          enabled: category.isLoading,
          child: CategoryHeader(
            category: switch (category) {
              AsyncData(:final value) => value,
              _ => CategoryDetailMock.item(),
            },
          ),
        );

      case SearchSource(:final query):
        return ProductSearchHeader(query: query);
    }
  }

  @override
  Widget build(BuildContext context) {
    final listing = ref.watch(productListingControllerProvider(widget.source));

    return Scaffold(
      body: Column(
        children: [
          AppHeader(
            initialValue: switch (widget.source) {
              SearchSource(:final query) => query,
              _ => '',
            },
            onSearch: (query) {
              switch (widget.source) {
                case SearchSource():
                  context.replace(
                    AppRoutes.products,
                    extra: SearchSource(query),
                  );

                default:
                  context.push(AppRoutes.products, extra: SearchSource(query));
              }
            },
          ),

          Expanded(
            child: CustomScrollView(
              controller: _controller,
              slivers: [
                SliverToBoxAdapter(child: _buildHeader()),

                SliverPersistentHeader(
                  pinned: true,
                  delegate: _ProductToolbarHeaderDelegate(
                    child: ProductListingToolbar(source: widget.source),
                  ),
                ),

                ProductGrid(listing: listing),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ProductToolbarHeaderDelegate extends SliverPersistentHeaderDelegate {
  _ProductToolbarHeaderDelegate({required this.child});

  final Widget child;

  @override
  double get minExtent => 60;

  @override
  double get maxExtent => 60;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Material(
      color: Theme.of(context).scaffoldBackgroundColor,
      elevation: overlapsContent ? 1 : 0,
      child: child,
    );
  }

  @override
  bool shouldRebuild(_ProductToolbarHeaderDelegate oldDelegate) {
    return child != oldDelegate.child;
  }
}
