import 'package:commerce_flutter_storefront/core/models/api_response.dart';
import 'package:commerce_flutter_storefront/features/account/data/models/upsert_address_request.dart';
import 'package:commerce_flutter_storefront/features/account/data/models/upsert_profile_request.dart';
import 'package:commerce_flutter_storefront/features/account/data/models/user_address_detail.dart';
import 'package:commerce_flutter_storefront/features/account/data/models/user_addresses.dart';
import 'package:commerce_flutter_storefront/features/account/data/models/user_profile.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'account_api.g.dart';

@RestApi()
abstract class AccountApi {
  factory AccountApi(Dio dio) = _AccountApi;

  @GET("/user/profile")
  Future<ApiResponse<UserProfile>> getUserProfile();

  @PUT("/user/profile")
  Future<ApiResponse<void>> updateUserProfile(
    @Body() UpsertProfileRequest request,
  );

  @GET("/user/addresses")
  Future<ApiResponse<UserAddresses>> getUserAddresses();

  @GET("/user/addresses/{id}")
  Future<ApiResponse<UserAddressDetail>> getUserAddress(@Path("id") int id);

  @POST("/user/addresses")
  Future<ApiResponse<void>> createAddress(@Body() UpsertAddressRequest request);

  @PUT("/user/addresses/{id}")
  Future<ApiResponse<void>> updateAddress(
    @Path("id") int id,
    @Body() UpsertAddressRequest request,
  );

  @DELETE("/user/addresses/{id}")
  Future<ApiResponse<void>> deleteAddress(@Path("id") int id);

  @PATCH("/user/addresses/{id}/default")
  Future<ApiResponse<void>> setDefaultAddress(@Path("id") int id);
}
