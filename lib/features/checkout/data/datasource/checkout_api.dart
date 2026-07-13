import 'package:commerce_flutter_storefront/core/models/api_response.dart';
import 'package:commerce_flutter_storefront/features/checkout/data/models/checkout_session.dart';
import 'package:commerce_flutter_storefront/features/checkout/data/models/confirm_checkout_response.dart';
import 'package:commerce_flutter_storefront/features/checkout/data/models/create_checkout_response.dart';
import 'package:commerce_flutter_storefront/features/checkout/data/models/set_checkout_address_request.dart';
import 'package:commerce_flutter_storefront/features/checkout/data/models/set_shipping_request.dart';
import 'package:commerce_flutter_storefront/features/checkout/data/models/shipping_cost.dart';
import 'package:commerce_flutter_storefront/features/checkout/data/models/shipping_courier_request.dart';
import 'package:commerce_flutter_storefront/features/checkout/data/models/warehouse_origin.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'checkout_api.g.dart';

@RestApi()
abstract class CheckoutApi {
  factory CheckoutApi(Dio dio) = _CheckoutApi;

  @GET("/user/checkout-sessions/{sessionId}")
  Future<ApiResponse<CheckoutSession>> getCheckoutSession(
    @Path("sessionId") int sessionId,
  );

  @POST("/user/checkout-sessions")
  Future<ApiResponse<CreateCheckoutResponse>> createCheckoutSession();

  @POST("/user/checkout-sessions/{sessionId}/shipping-cost")
  Future<ApiResponse<ShippingCost>> getShippingCost(
    @Path("sessionId") int sessionId,
    @Body() ShippingCourierRequest request,
  );

  @PATCH("/user/checkout-sessions/{sessionId}/address")
  Future<ApiResponse<void>> setAddressCheckoutSession(
    @Path("sessionId") int sessionId,
    @Body() SetCheckoutAddressRequest request,
  );

  @PATCH("/user/checkout-sessions/{sessionId}/shipping-method")
  Future<ApiResponse<void>> setShippingCheckoutSession(
    @Path("sessionId") int sessionId,
    @Body() SetShippingRequest request,
  );

  @POST("/user/checkout-sessions/{sessionId}/confirm")
  Future<ApiResponse<ConfirmCheckoutResponse>> confirmCheckout(
    @Path("sessionId") int sessionId,
  );

  @GET("/user/checkout-sessions/origin")
  Future<ApiResponse<WarehouseOrigin>> getWarehouseOrigin();
}
