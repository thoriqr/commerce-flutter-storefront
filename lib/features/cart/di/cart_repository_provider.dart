import 'package:commerce_flutter_storefront/features/cart/data/repositories/cart_repository_impl.dart';
import 'package:commerce_flutter_storefront/features/cart/di/cart_api_provider.dart';
import 'package:commerce_flutter_storefront/features/cart/domain/repositories/cart_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart_repository_provider.g.dart';

@riverpod
CartRepository cartRepository(Ref ref) {
  return CartRepositoryImpl(ref.watch(cartApiProvider));
}
