import 'package:commerce_flutter_storefront/features/cart/data/models/cart.dart';

abstract interface class CartRepository {
  Future<Cart> getCart();

  Future<void> addCartItem({required int variantId, required int quantity});

  Future<void> updateCartItem(int variantId, int quantity);

  Future<void> deleteCartItem(int variantId);
}
