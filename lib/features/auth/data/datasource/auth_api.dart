import 'package:commerce_flutter_storefront/core/models/api_response.dart';
import 'package:commerce_flutter_storefront/features/auth/data/models/auth_tokens.dart';
import 'package:commerce_flutter_storefront/features/auth/data/models/login_request.dart';
import 'package:commerce_flutter_storefront/features/auth/data/models/refresh_request.dart';
import 'package:commerce_flutter_storefront/features/auth/data/models/change_password_request.dart';
import 'package:commerce_flutter_storefront/features/auth/data/models/set_password_request.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'auth_api.g.dart';

@RestApi()
abstract class AuthApi {
  factory AuthApi(Dio dio) = _AuthApi;

  @POST("/auth/login")
  Future<ApiResponse<AuthTokens>> login(@Body() LoginRequest request);

  @POST("/auth/refresh")
  Future<ApiResponse<AuthTokens>> refresh(@Body() RefreshRequest request);

  @POST("/auth/logout")
  Future<ApiResponse<void>> logout(@Body() RefreshRequest request);

  @POST("/auth/change-password")
  Future<ApiResponse<AuthTokens>> changePassword(
    @Body() ChangePasswordRequest request,
  );

  @POST("/auth/set-password")
  Future<ApiResponse<AuthTokens>> setPassword(
    @Body() SetPasswordRequest request,
  );
}
