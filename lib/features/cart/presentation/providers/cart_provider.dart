import 'package:commerce_flutter_storefront/features/cart/data/models/cart.dart';
import 'package:commerce_flutter_storefront/features/cart/di/cart_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart_provider.g.dart';

@riverpod
Future<Cart> cart(Ref ref) {
  return ref.read(cartRepositoryProvider).getCart();
}
