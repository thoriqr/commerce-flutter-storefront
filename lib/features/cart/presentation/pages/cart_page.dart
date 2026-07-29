import 'package:commerce_flutter_storefront/core/constants/error_codes.dart';
import 'package:commerce_flutter_storefront/core/exceptions/app_exception.dart';
import 'package:commerce_flutter_storefront/features/auth/presentation/providers/auth_provider.dart';
import 'package:commerce_flutter_storefront/features/cart/presentation/providers/cart_provider.dart';
import 'package:commerce_flutter_storefront/features/cart/presentation/widgets/cart_content.dart';
import 'package:commerce_flutter_storefront/features/cart/presentation/widgets/cart_guest_view.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/app_header.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/protected_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:commerce_flutter_storefront/features/cart/data/mocks/cart_mock.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:commerce_flutter_storefront/features/cart/presentation/widgets/cart_error_view.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProtectedView(child: _CartContent());
  }
}

class _CartContent extends ConsumerWidget {
  const _CartContent();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(hasLocalSessionProvider);

    final body = switch (session) {
      AsyncLoading() => const Center(child: CircularProgressIndicator()),

      AsyncError() => CartErrorView(
        onRetry: () {
          ref.invalidate(hasLocalSessionProvider);
        },
      ),

      AsyncData(:final value) =>
        value ? const _AuthenticatedCart() : const CartGuestView(),
    };

    return Scaffold(
      appBar: AppHeader(
        title: "Shopping Cart",
        showBackButton: true,
        showCartButton: false,
        showMenuButton: true,
        onSearch: (_) {},
      ),
      body: body,
    );
  }
}

class _AuthenticatedCart extends ConsumerWidget {
  const _AuthenticatedCart();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cart = ref.watch(cartProvider);

    return switch (cart) {
      AsyncLoading() => Skeletonizer(
        enabled: true,
        child: CartContent(
          cart: CartMock.item(),
          onRefresh: () {
            return ref.refresh(cartProvider.future);
          },
        ),
      ),

      AsyncError(:final error) =>
        error is AppException && error.code == ErrorCodes.unauthorized
            ? const CartGuestView()
            : CartErrorView(
                onRetry: () {
                  ref.invalidate(cartProvider);
                },
              ),

      AsyncData(:final value) => CartContent(
        cart: value,
        onRefresh: () {
          return ref.refresh(cartProvider.future);
        },
      ),
    };
  }
}
