import 'package:commerce_flutter_storefront/features/product/data/models/product_listing_query_params.dart';
import 'package:commerce_flutter_storefront/features/product/data/models/product_listing_result.dart';
import 'package:commerce_flutter_storefront/features/product/data/models/product_sort_option.dart';
import 'package:commerce_flutter_storefront/features/product/domain/product_source.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/providers/product_provider.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/states/product_listing_state.dart';
import 'package:flutter/widgets.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_listing_notifier.g.dart';

@riverpod
class ProductListing extends _$ProductListing {
  Future<ProductListingResult> _fetchProducts(
    ProductSource source,
    ProductListingQueryParams params,
  ) {
    switch (source) {
      case CollectionSource(:final slug):
        return ref.read(productsByCollectionProvider(slug, params).future);

      case CategorySource(:final slugPath):
        return ref.read(productsByCategoryProvider(slugPath, params).future);

      case SearchSource(:final query):
        return ref.read(productsBySearchProvider(query, params).future);
    }
  }

  Future<void> _reload(ProductListingQueryParams params) async {
    final current = state.value;

    if (current == null) return;

    final result = await _fetchProducts(source, params);

    state = AsyncData(
      current.copyWith(
        products: result.products,
        meta: result.meta,
        params: params,
      ),
    );
  }

  Future<void> applySort(ProductSortOption option) async {
    final current = state.value;

    if (current == null) return;

    state = AsyncData(current.copyWith(selectedSort: option));

    final params = current.params.copyWith(
      cursor: null,
      sortBy: option.sortBy,
      sortDir: option.sortDir,
    );

    await _reload(params);
  }

  Future<void> applyFilters(Map<String, List<String>> filters) async {
    final current = state.value;

    if (current == null) return;

    final params = current.params.copyWith(cursor: null, filters: filters);

    await _reload(params);
  }

  Future<void> applyAllFilters({
    int? priceMin,
    int? priceMax,
    required Map<String, List<String>> filters,
  }) async {
    final current = state.value;

    if (current == null) return;

    final params = current.params.copyWith(
      cursor: null,
      priceMin: priceMin,
      priceMax: priceMax,
      filters: filters,
    );

    final activeFilterCount =
        filters.length + ((priceMin != null || priceMax != null) ? 1 : 0);

    final result = await _fetchProducts(source, params);

    state = AsyncData(
      current.copyWith(
        products: result.products,
        meta: result.meta,
        params: params,
        activeFilterCount: activeFilterCount,
      ),
    );
  }

  Future<void> clearAllFilters() async {
    final current = state.value;

    if (current == null) return;

    final params = current.params.copyWith(
      cursor: null,
      filters: {},
      priceMin: null,
      priceMax: null,
    );

    final result = await _fetchProducts(source, params);

    state = AsyncData(
      current.copyWith(
        products: result.products,
        meta: result.meta,
        params: params,
        activeFilterCount: 0,
      ),
    );
  }

  Future<void> applyPriceRange({int? priceMin, int? priceMax}) async {
    final current = state.value;

    if (current == null) return;

    final params = current.params.copyWith(
      cursor: null,
      priceMin: priceMin,
      priceMax: priceMax,
    );

    await _reload(params);
  }

  Future<void> loadMore() async {
    final current = state.value;

    if (current == null) return;

    if (current.isLoadingMore) return;

    if (!current.meta.hasMore) return;

    final nextCursor = current.meta.nextCursor;

    if (nextCursor == null) return;

    state = AsyncData(current.copyWith(isLoadingMore: true));

    try {
      final nextParams = current.params.copyWith(cursor: nextCursor);

      final result = await _fetchProducts(source, nextParams);

      state = AsyncData(
        current.copyWith(
          products: [...current.products, ...result.products],
          meta: result.meta,
          params: nextParams,
          isLoadingMore: false,
        ),
      );
    } catch (e) {
      debugPrint(e.toString());

      state = AsyncData(current.copyWith(isLoadingMore: false));
    }
  }

  @override
  Future<ProductListingState> build(ProductSource source) async {
    const params = ProductListingQueryParams();

    final result = await _fetchProducts(source, params);

    return ProductListingState(
      products: result.products,
      meta: result.meta,
      params: params,
      selectedSort: ProductSortOption.newest,
    );
  }
}
