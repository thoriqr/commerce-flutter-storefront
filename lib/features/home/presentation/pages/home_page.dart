import 'package:commerce_flutter_storefront/core/router/app_routes.dart';
import 'package:commerce_flutter_storefront/features/banner/presentation/providers/banner_provider.dart';
import 'package:commerce_flutter_storefront/features/banner/presentation/widgets/hero_banner_carousel.dart';
import 'package:commerce_flutter_storefront/features/category/presentation/providers/category_provider.dart';
import 'package:commerce_flutter_storefront/features/category/presentation/widgets/popular_category_view.dart';
import 'package:commerce_flutter_storefront/features/collection/presentation/providers/collection_provider.dart';
import 'package:commerce_flutter_storefront/features/collection/presentation/widgets/collection_preview_view.dart';
import 'package:commerce_flutter_storefront/features/product/domain/product_source.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/app_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'package:commerce_flutter_storefront/features/collection/data/mocks/collection_preview_mock.dart';
import 'package:commerce_flutter_storefront/features/category/data/mocks/popular_category_mock.dart';
import 'package:commerce_flutter_storefront/features/banner/data/mocks/hero_banner_mock.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final collectionPreviews = ref.watch(collectionPreviewProvider);
    final popularCategories = ref.watch(popularCategoryProvider);
    final heroBanners = ref.watch(homepageHeroProvider);

    final hero = switch (heroBanners) {
      AsyncData(:final value) => value,
      _ => HeroBannerMock.items(),
    };

    final categories = switch (popularCategories) {
      AsyncData(:final value) => value,
      _ => PopularCategoryMock.items(),
    };

    final collections = switch (collectionPreviews) {
      AsyncData(:final value) => value,
      _ => CollectionPreviewMock.items(),
    };

    return Scaffold(
      appBar: AppHeader(
        showBackButton: false,
        onSearch: (query) {
          context.push(AppRoutes.products, extra: SearchSource(query));
        },
      ),
      body: Skeletonizer(
        enabled:
            heroBanners.isLoading ||
            popularCategories.isLoading ||
            collectionPreviews.isLoading,
        child: ListView(
          children: [
            const SizedBox(height: 16),

            HeroBannerCarousel(banners: hero),

            const SizedBox(height: 24),

            PopularCategoryView(categories: categories),

            const SizedBox(height: 24),

            Column(
              children: [
                for (final collection in collections)
                  CollectionPreviewView(collection: collection),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
