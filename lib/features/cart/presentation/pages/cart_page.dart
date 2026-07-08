import 'package:commerce_flutter_storefront/features/cart/data/models/cart.dart';
import 'package:commerce_flutter_storefront/features/cart/presentation/providers/cart_provider.dart';
import 'package:commerce_flutter_storefront/features/cart/presentation/widgets/cart_content.dart';
import 'package:commerce_flutter_storefront/features/cart/presentation/widgets/cart_guest_view.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/app_header.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/protected_async_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:commerce_flutter_storefront/features/cart/data/mocks/cart_mock.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:commerce_flutter_storefront/features/cart/presentation/widgets/cart_error_view.dart';

class CartPage extends ConsumerWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppHeader(
        title: 'Shopping Cart',
        showBackButton: true,
        showCartButton: false,
        showMenuButton: true,
        onSearch: (_) {},
      ),
      body: ProtectedAsyncView<Cart>(
        value: ref.watch(cartProvider),

        loading: Skeletonizer(
          enabled: true,
          child: CartContent(
            cart: CartMock.item(),
            onRefresh: () => ref.refresh(cartProvider.future),
          ),
        ),

        guest: const CartGuestView(),

        error: (_) =>
            CartErrorView(onRetry: () => ref.invalidate(cartProvider)),

        builder: (cart) => CartContent(
          cart: cart,
          onRefresh: () => ref.refresh(cartProvider.future),
        ),
      ),
    );
  }
}
