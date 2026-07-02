import 'package:commerce_flutter_storefront/features/cart/di/cart_repository_provider.dart';
import 'package:commerce_flutter_storefront/features/cart/presentation/providers/cart_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart_mutations.g.dart';

@riverpod
class CartMutations extends _$CartMutations {
  @override
  FutureOr<void> build() {}

  Future<void> addItem({required int variantId, required int quantity}) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      await ref
          .read(cartRepositoryProvider)
          .addCartItem(variantId: variantId, quantity: quantity);

      // Refresh cart after mutation.
      ref.invalidate(cartProvider);
    });
  }

  Future<void> updateItem({
    required int variantId,
    required int quantity,
  }) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      await ref
          .read(cartRepositoryProvider)
          .updateCartItem(variantId, quantity);

      // Refresh cart after mutation.
      ref.invalidate(cartProvider);
    });
  }

  Future<void> deleteItem({required int variantId}) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      await ref.read(cartRepositoryProvider).deleteCartItem(variantId);

      // Refresh cart after mutation.
      ref.invalidate(cartProvider);
    });
  }
}
