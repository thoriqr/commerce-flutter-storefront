import 'package:commerce_flutter_storefront/core/models/api_response.dart';
import 'package:commerce_flutter_storefront/features/auth/data/models/auth_tokens.dart';
import 'package:commerce_flutter_storefront/features/auth/data/models/refresh_request.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'refresh_api.g.dart';

@RestApi()
abstract class RefreshApi {
  factory RefreshApi(Dio dio) = _RefreshApi;

  @POST("/auth/refresh")
  Future<ApiResponse<AuthTokens>> refresh(@Body() RefreshRequest request);
}
