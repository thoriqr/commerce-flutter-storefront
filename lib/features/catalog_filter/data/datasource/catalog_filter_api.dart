import 'package:commerce_flutter_storefront/core/models/api_response.dart';
import 'package:commerce_flutter_storefront/features/catalog_filter/data/models/catalog_filter_group.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'catalog_filter_api.g.dart';

@RestApi()
abstract class CatalogFilterApi {
  factory CatalogFilterApi(Dio dio) = _CatalogFilterApi;

  @GET("/store/products/filters")
  Future<ApiResponse<List<CatalogFilterGroup>>> getCatalogFilterBySearch(
    @Query("q") String query,
  );

  @GET("/store/categories/filters")
  Future<ApiResponse<List<CatalogFilterGroup>>> getCatalogFilterByCategory(
    @Query("slugPath") String slugPath,
  );
}
