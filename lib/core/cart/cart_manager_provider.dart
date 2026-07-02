import 'package:commerce_flutter_storefront/core/cart/cart_manager.dart';
import 'package:commerce_flutter_storefront/core/cart/cart_manager_impl.dart';
import 'package:commerce_flutter_storefront/core/storage/secure_storage_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart_manager_provider.g.dart';

@riverpod
CartManager cartManager(Ref ref) {
  return CartManagerImpl(ref.watch(secureStorageProvider));
}
