import 'package:commerce_flutter_storefront/features/product/data/models/product_detail.dart';
import 'package:commerce_flutter_storefront/features/product/data/models/product_listing_query_params.dart';
import 'package:commerce_flutter_storefront/features/product/data/models/product_listing_result.dart';
import 'package:commerce_flutter_storefront/features/product/data/models/product_variant_detail.dart';
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
      .read(productRepositoryProvider)
      .getProductsByCategory(slugPath, params);
}

@riverpod
Future<ProductListingResult> productsByCollection(
  Ref ref,
  String slug,
  ProductListingQueryParams params,
) {
  return ref
      .read(productRepositoryProvider)
      .getProductsByCollection(slug, params);
}

@riverpod
Future<ProductDetail> productDetail(Ref ref, int id) {
  return ref.read(productRepositoryProvider).getProductDetail(id);
}

@riverpod
Future<ProductVariantDetail> productVariantDetail(
  Ref ref,
  int productId,
  int variantId,
) {
  return ref
      .read(productRepositoryProvider)
      .getProductVariantDetail(productId, variantId);
}
