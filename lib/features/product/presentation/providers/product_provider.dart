import 'package:commerce_flutter_storefront/features/product/data/models/product_listing_query_params.dart';
import 'package:commerce_flutter_storefront/features/product/data/models/product_listing_result.dart';
import 'package:commerce_flutter_storefront/features/product/di/product_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_provider.g.dart';

@riverpod
Future<ProductListingResult> productsBySearch(
  Ref ref,
  String query,
  ProductListingQueryParams params,
) {
  return ref.read(productRepositoryProvider).getProductsBySearch(query, params);
}

@riverpod
Future<ProductListingResult> productsByCategory(
  Ref ref,
  String slugPath,
  ProductListingQueryParams params,
) {
  return ref
      .watch(productRepositoryProvider)
      .getProductsByCategory(slugPath, params);
}

@riverpod
Future<ProductListingResult> productsByCollection(
  Ref ref,
  String slug,
  ProductListingQueryParams params,
) {
  return ref
      .watch(productRepositoryProvider)
      .getProductsByCollection(slug, params);
}
