import 'package:commerce_flutter_storefront/core/models/api_response.dart';
import 'package:commerce_flutter_storefront/core/models/api_response_with_meta.dart';
import 'package:commerce_flutter_storefront/core/models/cursor_meta.dart';
import 'package:commerce_flutter_storefront/features/product/data/models/product_detail.dart';
import 'package:commerce_flutter_storefront/features/product/data/models/product_summary.dart';
import 'package:commerce_flutter_storefront/features/product/data/models/product_variant_detail.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'product_api.g.dart';

@RestApi()
abstract class ProductApi {
  factory ProductApi(Dio dio) = _ProductApi;

  @GET("/store/products/by-search")
  Future<ApiResponseWithMeta<List<ProductSummary>, CursorMeta>>
  getProductsBySearch(
    @Query("q") String query,
    @Queries() Map<String, dynamic> queryParams,
  );

  @GET("/store/products/by-category")
  Future<ApiResponseWithMeta<List<ProductSummary>, CursorMeta>>
  getProductsByCategory(
    @Query("slugPath") String slugPath,
    @Queries() Map<String, dynamic> queryParams,
  );

  @GET("/store/products/by-collection")
  Future<ApiResponseWithMeta<List<ProductSummary>, CursorMeta>>
  getProductsByCollection(
    @Query("slug") String slug,
    @Queries() Map<String, dynamic> queryParams,
  );

  @GET("/store/products/{id}")
  Future<ApiResponse<ProductDetail>> getProductDetail(@Path("id") int id);

  @GET("/store/products/{productId}/variants/{variantId}")
  Future<ApiResponse<ProductVariantDetail>> getProductVariantDetail(
    @Path("productId") int productId,
    @Path("variantId") int variantId,
  );
}
