import 'package:commerce_flutter_storefront/core/models/api_response_with_meta.dart';
import 'package:commerce_flutter_storefront/features/product/data/models/product_summary.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'product_api.g.dart';

@RestApi()
abstract class ProductApi {
  factory ProductApi(Dio dio) = _ProductApi;

  @GET("/store/products/by-search")
  Future<ApiResponseWithMeta<List<ProductSummary>>> getProductsBySearch(
    @Query("q") String query,
    @Queries() Map<String, dynamic> queryParams,
  );

  @GET("/store/products/by-category")
  Future<ApiResponseWithMeta<List<ProductSummary>>> getProductsByCategory(
    @Query("slugPath") String slugPath,
    @Queries() Map<String, dynamic> queryParams,
  );

  @GET("/store/products/by-collection")
  Future<ApiResponseWithMeta<List<ProductSummary>>> getProductsByCollection(
    @Query("slug") String slug,
    @Queries() Map<String, dynamic> queryParams,
  );
}
