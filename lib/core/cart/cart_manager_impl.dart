import 'package:commerce_flutter_storefront/core/cart/cart_manager.dart';
import 'package:commerce_flutter_storefront/core/storage/secure_storage.dart';

class CartManagerImpl implements CartManager {
  const CartManagerImpl(this._storage);

  final SecureStorage _storage;

  @override
  Future<String?> getCartId() {
    return _storage.readCartId();
  }

  @override
  Future<void> saveCartId(String cartId) {
    return _storage.saveCartId(cartId);
  }

  @override
  Future<void> clear() {
    return _storage.deleteCartId();
  }
}
