import 'package:commerce_flutter_storefront/core/constants/error_codes.dart';
import 'package:commerce_flutter_storefront/core/exceptions/app_exception.dart';
import 'package:commerce_flutter_storefront/features/auth/presentation/pages/login_page.dart';
import 'package:commerce_flutter_storefront/features/checkout/presentation/providers/checkout_provider.dart';
import 'package:commerce_flutter_storefront/features/checkout/presentation/widgets/checkout_content.dart';
import 'package:commerce_flutter_storefront/features/checkout/presentation/widgets/checkout_error_view.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/app_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:commerce_flutter_storefront/features/checkout/presentation/widgets/checkout_bottom_bar.dart';

class CheckoutPage extends ConsumerWidget {
  const CheckoutPage({super.key, required this.sessionId});

  final int sessionId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final checkout = ref.watch(checkoutSessionProvider(sessionId));

    return Scaffold(
      appBar: AppHeader(
        title: 'Checkout',
        showCartButton: false,
        onSearch: (_) {},
      ),
      body: checkout.when(
        loading: () => const Center(child: CircularProgressIndicator()),

        data: (checkout) => CheckoutContent(
          checkout: checkout,
          onRefresh: () {
            return ref.refresh(checkoutSessionProvider(sessionId).future);
          },
        ),

        error: (error, _) {
          if (error is AppException && error.code == ErrorCodes.unauthorized) {
            return const LoginPage(showAppBar: false, isEmbedded: true);
          }

          return const CheckoutErrorView();
        },
      ),

      bottomNavigationBar: switch (checkout) {
        AsyncData(:final value) => CheckoutBottomBar(checkout: value),
        _ => null,
      },
    );
  }
}
