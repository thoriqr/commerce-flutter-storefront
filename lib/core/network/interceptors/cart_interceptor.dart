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

  // The backend may issue a new cart id when:
  //
  // - a guest cart is created
  // - a guest cart is merged into a user cart
  // - the current cart becomes invalid
  //
  // Persist the latest cart id so future requests remain
  // synchronized with the server.
  @override
  Future<void> onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    final cartId = response.headers.value(_cartHeader);

    if (cartId != null && cartId.isNotEmpty) {
      await cartManager.saveCartId(cartId);
    }

    handler.next(response);
  }
}
