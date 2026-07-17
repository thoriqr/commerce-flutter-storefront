import 'package:commerce_flutter_storefront/core/constants/error_codes.dart';
import 'package:commerce_flutter_storefront/core/exceptions/app_exception.dart';
import 'package:commerce_flutter_storefront/features/cart/presentation/providers/cart_provider.dart';
import 'package:commerce_flutter_storefront/features/cart/presentation/widgets/cart_content.dart';
import 'package:commerce_flutter_storefront/features/cart/presentation/widgets/cart_guest_view.dart';
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
    final cart = ref.watch(cartProvider);

    final body = switch (cart) {
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

    return Scaffold(
      appBar: AppHeader(
        title: 'Shopping Cart',
        showBackButton: true,
        showCartButton: false,
        showMenuButton: true,
        onSearch: (_) {},
      ),
      body: body,
    );
  }
}
