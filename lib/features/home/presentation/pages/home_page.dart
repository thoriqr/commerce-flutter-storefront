import 'package:commerce_flutter_storefront/core/router/app_routes.dart';
import 'package:commerce_flutter_storefront/features/banner/data/models/hero_banner.dart';
import 'package:commerce_flutter_storefront/features/banner/presentation/providers/banner_provider.dart';
import 'package:commerce_flutter_storefront/features/banner/presentation/widgets/hero_banner_carousel.dart';
import 'package:commerce_flutter_storefront/features/category/data/models/popular_category.dart';
import 'package:commerce_flutter_storefront/features/category/presentation/providers/category_provider.dart';
import 'package:commerce_flutter_storefront/features/category/presentation/widgets/popular_category_view.dart';
import 'package:commerce_flutter_storefront/features/collection/data/models/collection_preview.dart';
import 'package:commerce_flutter_storefront/features/collection/presentation/providers/collection_provider.dart';
import 'package:commerce_flutter_storefront/features/collection/presentation/widgets/collection_preview_view.dart';
import 'package:commerce_flutter_storefront/features/product/domain/product_source.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/app_header.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/section_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'package:commerce_flutter_storefront/features/collection/data/mocks/collection_preview_mock.dart';
import 'package:commerce_flutter_storefront/features/category/data/mocks/popular_category_mock.dart';
import 'package:commerce_flutter_storefront/features/banner/data/mocks/hero_banner_mock.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  Future<void> _refresh(WidgetRef ref) async {
    await Future.wait([
      ref.refresh(homepageHeroProvider.future),
      ref.refresh(popularCategoryProvider.future),
      ref.refresh(collectionPreviewProvider.future),
    ]);
  }

  bool _isInitialLoading(
    AsyncValue<List<HeroBanner>> hero,
    AsyncValue<List<PopularCategory>> categories,
    AsyncValue<List<CollectionPreview>> collections,
  ) {
    return (hero.isLoading && !hero.hasValue) ||
        (categories.isLoading && !categories.hasValue) ||
        (collections.isLoading && !collections.hasValue);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final heroAsync = ref.watch(homepageHeroProvider);
    final categoriesAsync = ref.watch(popularCategoryProvider);
    final collectionsAsync = ref.watch(collectionPreviewProvider);

    final isInitialLoading = _isInitialLoading(
      heroAsync,
      categoriesAsync,
      collectionsAsync,
    );

    final heroSection = switch (heroAsync) {
      AsyncData(:final value) => HeroBannerCarousel(banners: value),

      AsyncError() => SectionError(
        message: 'Unable to load banners.',
        onRetry: () => ref.invalidate(homepageHeroProvider),
      ),

      _ => HeroBannerCarousel(banners: HeroBannerMock.items()),
    };

    final categorySection = switch (categoriesAsync) {
      AsyncData(:final value) => PopularCategoryView(categories: value),

      AsyncError() => SectionError(
        message: 'Unable to load categories.',
        onRetry: () => ref.invalidate(popularCategoryProvider),
      ),

      _ => PopularCategoryView(categories: PopularCategoryMock.items()),
    };

    final collectionSection = switch (collectionsAsync) {
      AsyncData(:final value) => Column(
        children: [
          for (final collection in value)
            CollectionPreviewView(collection: collection),
        ],
      ),

      AsyncError() => SectionError(
        message: 'Unable to load collections.',
        onRetry: () => ref.invalidate(collectionPreviewProvider),
      ),

      _ => Column(
        children: [
          for (final collection in CollectionPreviewMock.items())
            CollectionPreviewView(collection: collection),
        ],
      ),
    };

    return Scaffold(
      appBar: AppHeader(
        showBackButton: false,
        onSearch: (query) {
          context.push(AppRoutes.products, extra: SearchSource(query));
        },
      ),
      body: Skeletonizer(
        enabled: isInitialLoading,
        child: RefreshIndicator(
          onRefresh: () => _refresh(ref),
          child: ListView(
            physics: const AlwaysScrollableScrollPhysics(),
            children: [
              const SizedBox(height: 16),

              heroSection,

              const SizedBox(height: 24),

              categorySection,

              const SizedBox(height: 24),

              collectionSection,
            ],
          ),
        ),
      ),
    );
  }
}
