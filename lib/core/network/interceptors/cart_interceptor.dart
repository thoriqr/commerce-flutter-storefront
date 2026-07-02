import 'package:commerce_flutter_storefront/core/cart/cart_manager.dart';
import 'package:dio/dio.dart';

class CartInterceptor extends Interceptor {
  CartInterceptor({required this.cartManager});

  static const _cartHeader = 'x-cart-id';

  final CartManager cartManager;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final cartId = await cartManager.getCartId();

    if (cartId != null && cartId.isNotEmpty) {
      options.headers[_cartHeader] = cartId;
    }

    handler.next(options);
  }

  @override
  Future<void> onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    // TODO:
    //
    // Read x-cart-id from response.headers.
    // Save the latest cart id through CartManager.
    //
    // This keeps guest carts and merged carts synchronized.

    handler.next(response);
  }
}
