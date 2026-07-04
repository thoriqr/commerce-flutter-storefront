import 'package:commerce_flutter_storefront/features/cart/presentation/mutations/cart_mutations.dart';
import 'package:commerce_flutter_storefront/features/cart/presentation/providers/cart_provider.dart';
import 'package:commerce_flutter_storefront/features/cart/presentation/widgets/cart_bottom_bar.dart';
import 'package:commerce_flutter_storefront/features/cart/presentation/widgets/cart_item_tile.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/app_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:commerce_flutter_storefront/features/cart/data/mocks/cart_mock.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CartPage extends ConsumerWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartAsync = ref.watch(cartProvider);
    final mutation = ref.watch(cartMutationsProvider);

    final cart = switch (cartAsync) {
      AsyncData(:final value) => value,
      _ => CartMock.item(),
    };

    final isMutating = mutation.isLoading;

    return Scaffold(
      appBar: AppHeader(
        title: 'Shopping Cart',
        showBackButton: true,
        showCartButton: false,
        showMenuButton: true,
        onSearch: (_) {},
      ),

      body: Skeletonizer(
        // Only show skeleton during the initial load.
        enabled: cartAsync.isLoading && !cartAsync.hasValue,
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
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
      ),
    );
  }
}
