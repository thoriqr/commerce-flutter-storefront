import 'package:commerce_flutter_storefront/features/product/data/models/product_listing_query_params.dart';
import 'package:commerce_flutter_storefront/features/product/data/models/product_listing_result.dart';

abstract interface class ProductRepository {
  Future<ProductListingResult> getProductsBySearch(
    String query,
    ProductListingQueryParams params,
  );

  Future<ProductListingResult> getProductsByCategory(
    String slugPath,
    ProductListingQueryParams params,
  );

  Future<ProductListingResult> getProductsByCollection(
    String slug,
    ProductListingQueryParams params,
  );
}
