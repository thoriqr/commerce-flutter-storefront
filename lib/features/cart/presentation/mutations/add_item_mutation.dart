import 'package:commerce_flutter_storefront/features/cart/di/cart_repository_provider.dart';
import 'package:commerce_flutter_storefront/features/cart/presentation/providers/cart_provider.dart';
import 'package:commerce_flutter_storefront/features/shared/mixins/async_mutation_mixin.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_item_mutation.g.dart';

@riverpod
class AddItemMutation extends _$AddItemMutation with AsyncMutationMixin {
  @override
  FutureOr<void> build() {}

  Future<void> addItem({required int variantId, required int quantity}) {
    return run(() async {
      await ref
          .read(cartRepositoryProvider)
          .addCartItem(variantId: variantId, quantity: quantity);

      ref.invalidate(cartProvider);
    });
  }
}
