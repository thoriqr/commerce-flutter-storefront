import 'package:commerce_flutter_storefront/core/models/api_response.dart';
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

  @GET("/user/addresses")
  Future<ApiResponse<UserAddresses>> getUserAddresses();

  @GET("/user/addresses/{id}")
  Future<ApiResponse<UserAddressDetail>> getUserAddress(@Path("id") int id);
}
