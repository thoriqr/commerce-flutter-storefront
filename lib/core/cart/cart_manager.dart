abstract interface class CartManager {
  Future<String?> getCartId();

  Future<void> saveCartId(String cartId);

  Future<void> clear();
}
