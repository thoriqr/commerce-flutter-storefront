import 'package:commerce_flutter_storefront/core/extensions/widget_ref_extension.dart';
import 'package:commerce_flutter_storefront/features/cart/data/models/cart.dart';
import 'package:commerce_flutter_storefront/features/cart/presentation/mutations/delete_item_mutation.dart';
import 'package:commerce_flutter_storefront/features/cart/presentation/mutations/update_item_mutation.dart';
import 'package:commerce_flutter_storefront/features/cart/presentation/widgets/cart_bottom_bar.dart';
import 'package:commerce_flutter_storefront/features/cart/presentation/widgets/cart_empty_view.dart';
import 'package:commerce_flutter_storefront/features/cart/presentation/widgets/cart_item_tile.dart';
import 'package:commerce_flutter_storefront/features/checkout/presentation/mutations/create_checkout_session_mutation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartContent extends ConsumerWidget {
  const CartContent({super.key, required this.cart, required this.onRefresh});

  final Cart cart;
  final RefreshCallback onRefresh;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listenMutationError(updateItemMutationProvider, context);
    ref.listenMutationError(deleteItemMutationProvider, context);

    final updateMutation = ref.watch(updateItemMutationProvider);
    final deleteMutation = ref.watch(deleteItemMutationProvider);
    final checkoutMutation = ref.watch(createCheckoutSessionMutationProvider);

    // Lock cart interactions while any cart-changing operation or checkout
    // session creation is in progress to avoid overlapping stale cart state.
    final isMutating =
        updateMutation.isLoading ||
        deleteMutation.isLoading ||
        checkoutMutation.isLoading;

    if (cart.isEmpty) {
      return CartEmptyView(onRefresh: onRefresh);
    }

    return RefreshIndicator(
      onRefresh: onRefresh,
      child: Column(
        children: [
          Expanded(
            child: ListView.separated(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(16),
              itemCount: cart.items.length,
              separatorBuilder: (_, _) => const SizedBox(height: 12),
              itemBuilder: (_, index) {
                return CartItemTile(
                  item: cart.items[index],
                  enabled: !isMutating,
                );
              },
            ),
          ),

          CartBottomBar(cart: cart, enabled: !isMutating),
        ],
      ),
    );
  }
}
