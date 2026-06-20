import 'package:commerce_flutter_storefront/core/models/api_response.dart';
import 'package:commerce_flutter_storefront/features/collection/data/models/collection_detail.dart';
import 'package:commerce_flutter_storefront/features/collection/data/models/collection_preview.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'collection_api.g.dart';

@RestApi()
abstract class CollectionApi {
  factory CollectionApi(Dio dio) = _CollectionApi;

  @GET("/store/collections/preview")
  Future<ApiResponse<List<CollectionPreview>>> getCollectionPreview();

  @GET("/store/collections/{slug}")
  Future<ApiResponse<CollectionDetail>> getCollectionBySlug(
    @Path("slug") String slug,
  );
}
