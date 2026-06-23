import 'package:commerce_flutter_storefront/features/product/data/models/product_listing_query_params.dart';
import 'package:commerce_flutter_storefront/features/product/domain/product_source.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/providers/product_provider.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/states/product_listing_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_listing_notifier.g.dart';

@riverpod
class ProductListing extends _$ProductListing {
  @override
  Future<ProductListingState> build(ProductSource source) async {
    const params = ProductListingQueryParams();

    switch (source) {
      case CollectionSource(:final slug):
        final result = await ref.read(
          productsByCollectionProvider(slug, params).future,
        );

        return ProductListingState(
          products: result.products,
          meta: result.meta,
          params: params,
        );

      case CategorySource(:final slugPath):
        final result = await ref.read(
          productsByCategoryProvider(slugPath, params).future,
        );

        return ProductListingState(
          products: result.products,
          meta: result.meta,
          params: params,
        );

      case SearchSource(:final query):
        final result = await ref.read(
          productsBySearchProvider(query, params).future,
        );

        return ProductListingState(
          products: result.products,
          meta: result.meta,
          params: params,
        );
    }
  }
}
