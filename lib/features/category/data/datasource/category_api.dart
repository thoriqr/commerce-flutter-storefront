import 'package:commerce_flutter_storefront/core/models/api_response.dart';
import 'package:commerce_flutter_storefront/features/category/data/models/category_detail.dart';
import 'package:commerce_flutter_storefront/features/category/data/models/category_tree.dart';
import 'package:commerce_flutter_storefront/features/category/data/models/popular_category.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'category_api.g.dart';

@RestApi()
abstract class CategoryApi {
  factory CategoryApi(Dio dio) = _CategoryApi;

  @GET("/store/categories/popular")
  Future<ApiResponse<List<PopularCategory>>> getPopularCategory();

  @GET("/store/categories/mega-menu")
  Future<ApiResponse<List<CategoryTree>>> getCategoryTree();

  @GET("/store/categories/detail")
  Future<ApiResponse<CategoryDetail>> getCategoryDetail(
    @Query("slugPath") String slugPath,
  );
}
