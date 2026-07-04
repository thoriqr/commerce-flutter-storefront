import 'package:commerce_flutter_storefront/core/network/api_response_extension.dart';
import 'package:commerce_flutter_storefront/features/cart/data/datasource/cart_api.dart';
import 'package:commerce_flutter_storefront/features/cart/data/models/add_cart_request.dart';
import 'package:commerce_flutter_storefront/features/cart/data/models/cart.dart';
import 'package:commerce_flutter_storefront/features/cart/data/models/update_cart_request.dart';
import 'package:commerce_flutter_storefront/features/cart/domain/repositories/cart_repository.dart';

class CartRepositoryImpl implements CartRepository {
  const CartRepositoryImpl(this._api);

  final CartApi _api;

  @override
  Future<Cart> getCart() {
    return _api.getCart().unwrap();
  }

  @override
  Future<void> addCartItem({required int variantId, required int quantity}) {
    return _api
        .addCartItem(AddCartRequest(variantId: variantId, quantity: quantity))
        .unwrap();
  }

  @override
  Future<void> updateCartItem(int variantId, int quantity) {
    return _api
        .updateCartItem(variantId, UpdateCartRequest(quantity: quantity))
        .unwrap();
  }

  @override
  Future<void> deleteCartItem(int variantId) {
    return _api.deleteCartItem(variantId).unwrap();
  }
}
