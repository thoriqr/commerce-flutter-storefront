import 'package:commerce_flutter_storefront/core/models/api_response.dart';
import 'package:commerce_flutter_storefront/features/shipping/data/models/city.dart';
import 'package:commerce_flutter_storefront/features/shipping/data/models/district.dart';
import 'package:commerce_flutter_storefront/features/shipping/data/models/province.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'shipping_api.g.dart';

@RestApi()
abstract class ShippingApi {
  factory ShippingApi(Dio dio) = _ShippingApi;

  @GET("/shipping/provinces")
  Future<ApiResponse<List<Province>>> getProvinces();

  @GET("/shipping/cities/{provinceId}")
  Future<ApiResponse<List<City>>> getCities(@Path("provinceId") int provinceId);

  @GET("/shipping/districts/{cityId}")
  Future<ApiResponse<List<District>>> getDistricts(@Path("cityId") int cityId);
}
