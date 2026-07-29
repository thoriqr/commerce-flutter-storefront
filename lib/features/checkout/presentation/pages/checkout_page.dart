import 'package:commerce_flutter_storefront/core/constants/error_codes.dart';
import 'package:commerce_flutter_storefront/core/exceptions/app_exception.dart';
import 'package:commerce_flutter_storefront/core/router/app_routes.dart';
import 'package:commerce_flutter_storefront/features/auth/constants/login_redirect.dart';
import 'package:commerce_flutter_storefront/features/auth/presentation/pages/login_page.dart';
import 'package:commerce_flutter_storefront/features/auth/presentation/providers/auth_provider.dart';
import 'package:commerce_flutter_storefront/features/checkout/presentation/providers/checkout_provider.dart';
import 'package:commerce_flutter_storefront/features/checkout/presentation/widgets/checkout_content.dart';
import 'package:commerce_flutter_storefront/features/checkout/presentation/widgets/checkout_error_view.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/app_header.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/protected_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:commerce_flutter_storefront/features/checkout/presentation/widgets/checkout_bottom_bar.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key, required this.sessionId});

  final int sessionId;

  @override
  Widget build(BuildContext context) {
    return ProtectedView(
      requiresSameUser: true,
      child: _CheckoutContent(sessionId: sessionId),
    );
  }
}

class _CheckoutContent extends ConsumerWidget {
  const _CheckoutContent({required this.sessionId});

  final int sessionId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(hasLocalSessionProvider);

    return switch (session) {
      AsyncLoading() => const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),

      AsyncError() => const Scaffold(body: CheckoutErrorView()),

      AsyncData(value: false) => LoginPage(
        redirect: LoginRedirect(
          AppRoutes.checkoutSession(sessionId),
          requiresSameUser: true,
        ),
        isEmbedded: true,
      ),

      AsyncData(value: true) => _AuthenticatedCheckout(sessionId: sessionId),
    };
  }
}

class _AuthenticatedCheckout extends ConsumerWidget {
  const _AuthenticatedCheckout({required this.sessionId});

  final int sessionId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final checkout = ref.watch(checkoutSessionProvider(sessionId));

    final body = switch (checkout) {
      AsyncLoading() => const Center(child: CircularProgressIndicator()),

      AsyncError(:final error) =>
        error is AppException && error.code == ErrorCodes.unauthorized
            ? LoginPage(
                redirect: LoginRedirect(
                  AppRoutes.checkoutSession(sessionId),
                  requiresSameUser: true,
                ),
                isEmbedded: true,
              )
            : const CheckoutErrorView(),

      AsyncData(:final value) => CheckoutContent(
        checkout: value,
        onRefresh: () {
          return ref.refresh(checkoutSessionProvider(sessionId).future);
        },
      ),
    };

    return Scaffold(
      appBar: AppHeader(
        title: 'Checkout',
        showCartButton: false,
        onSearch: (_) {},
      ),
      body: body,
      bottomNavigationBar: switch (checkout) {
        AsyncData(:final value) => CheckoutBottomBar(checkout: value),
        _ => null,
      },
    );
  }
}
