import 'package:commerce_flutter_storefront/core/models/api_response.dart';
import 'package:commerce_flutter_storefront/features/cart/data/models/add_cart_request.dart';
import 'package:commerce_flutter_storefront/features/cart/data/models/cart.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'cart_api.g.dart';

@RestApi()
abstract class CartApi {
  factory CartApi(Dio dio) = _CartApi;

  @GET("/cart")
  Future<ApiResponse<Cart>> getCart();

  @POST("/cart/items")
  Future<ApiResponse<void>> addCartItem(@Body() AddCartRequest request);

  @PATCH("/cart/items/{variantId}")
  Future<ApiResponse<void>> updateCartItem(
    @Path("variantId") int variantId,
    @Body() int quantity,
  );

  @DELETE("/cart/items/{variantId}")
  Future<ApiResponse<void>> deleteCartItem(@Path("variantId") int variantId);
}
