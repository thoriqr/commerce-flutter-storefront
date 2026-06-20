import 'package:commerce_flutter_storefront/core/models/api_response.dart';
import 'package:commerce_flutter_storefront/features/banner/data/models/hero_banner.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'banner_api.g.dart';

@RestApi()
abstract class BannerApi {
  factory BannerApi(Dio dio) = _BannerApi;

  @GET("/store/marketing/banners?placement=homepage_hero")
  Future<ApiResponse<List<HeroBanner>>> getHomepageHero();
}
