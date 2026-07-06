import 'package:commerce_flutter_storefront/features/cart/presentation/mutations/cart_mutations.dart';
import 'package:commerce_flutter_storefront/features/cart/presentation/providers/cart_provider.dart';
import 'package:commerce_flutter_storefront/features/cart/presentation/widgets/cart_bottom_bar.dart';
import 'package:commerce_flutter_storefront/features/cart/presentation/widgets/cart_item_tile.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/app_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:commerce_flutter_storefront/features/cart/data/mocks/cart_mock.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:commerce_flutter_storefront/features/cart/presentation/widgets/cart_error_view.dart';

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

    final isInitialLoading = cartAsync.isLoading && !cartAsync.hasValue;

    final isMutating = mutation.isLoading;

    final body = switch (cartAsync) {
      AsyncError() => CartErrorView(
        onRetry: () => ref.invalidate(cartProvider),
      ),

      _ => RefreshIndicator(
        onRefresh: () => ref.refresh(cartProvider.future),
        child: cart.isEmpty
            ? ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                children: [
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.shopping_cart_outlined,
                          size: 64,
                          color: Theme.of(context).colorScheme.outline,
                        ),

                        const SizedBox(height: 16),

                        Text(
                          'Your cart is empty',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),

                        const SizedBox(height: 8),

                        Text(
                          'Browse products and add items to get started.',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
                                color: Theme.of(
                                  context,
                                ).colorScheme.onSurfaceVariant,
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            : Column(
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
      ),
    };

    return Scaffold(
      appBar: AppHeader(
        title: 'Shopping Cart',
        showBackButton: true,
        showCartButton: false,
        showMenuButton: true,
        onSearch: (_) {},
      ),
      body: Skeletonizer(enabled: isInitialLoading, child: body),
    );
  }
}
