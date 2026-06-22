import 'package:commerce_flutter_storefront/features/product/data/datasource/product_api.dart';
import 'package:commerce_flutter_storefront/features/product/data/models/product_listing_query_params.dart';
import 'package:commerce_flutter_storefront/features/product/data/models/product_listing_result.dart';
import 'package:commerce_flutter_storefront/features/product/domain/repositories/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  const ProductRepositoryImpl(this._api);

  final ProductApi _api;

  @override
  Future<ProductListingResult> getProductsBySearch(
    String query,
    ProductListingQueryParams params,
  ) async {
    final res = await _api.getProductsBySearch(query, params.toQuery());

    return ProductListingResult(products: res.data, meta: res.meta);
  }

  @override
  Future<ProductListingResult> getProductsByCategory(
    String slugPath,
    ProductListingQueryParams params,
  ) async {
    final res = await _api.getProductsByCategory(slugPath, params.toQuery());

    return ProductListingResult(products: res.data, meta: res.meta);
  }

  @override
  Future<ProductListingResult> getProductsByCollection(
    String slug,
    ProductListingQueryParams params,
  ) async {
    final res = await _api.getProductsByCollection(slug, params.toQuery());

    return ProductListingResult(products: res.data, meta: res.meta);
  }
}
