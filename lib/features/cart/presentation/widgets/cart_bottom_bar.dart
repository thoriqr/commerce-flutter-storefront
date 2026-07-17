import 'package:commerce_flutter_storefront/core/exceptions/app_exception.dart';
import 'package:commerce_flutter_storefront/core/router/app_routes.dart';
import 'package:commerce_flutter_storefront/core/router/auth_routes.dart';
import 'package:commerce_flutter_storefront/core/utils/currency_utils.dart';
import 'package:commerce_flutter_storefront/features/auth/constants/login_redirect.dart';
import 'package:commerce_flutter_storefront/features/auth/presentation/providers/auth_provider.dart';
import 'package:commerce_flutter_storefront/features/cart/data/models/cart.dart';
import 'package:commerce_flutter_storefront/features/checkout/presentation/mutations/checkout_mutations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class CartBottomBar extends ConsumerWidget {
  const CartBottomBar({super.key, required this.cart, required this.enabled});

  final Cart cart;
  final bool enabled;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(checkoutMutationsProvider, (previous, next) {
      next.whenOrNull(
        error: (error, _) {
          final message = switch (error) {
            AppException e => e.message,
            _ => 'Something went wrong.',
          };

          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(message)));
        },
      );
    });

    final theme = Theme.of(context);

    final auth = ref.watch(isAuthenticatedProvider);

    final checkoutMutation = ref.watch(checkoutMutationsProvider);

    final isAuthenticated = switch (auth) {
      AsyncData(:final value) => value,
      _ => false,
    };

    return SafeArea(
      top: false,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: theme.scaffoldBackgroundColor,
          border: Border(top: BorderSide(color: theme.dividerColor)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (cart.hasUnavailableItems) ...[
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: theme.colorScheme.errorContainer,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.warning_amber_rounded,
                      color: theme.colorScheme.onErrorContainer,
                    ),

                    const SizedBox(width: 12),

                    Expanded(
                      child: Text(
                        'Some items require your attention before checkout.',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.colorScheme.onErrorContainer,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),
            ],

            Row(
              children: [
                Text('Subtotal', style: theme.textTheme.bodyLarge),

                const Spacer(),

                Text(
                  CurrencyUtils.formatRupiah(cart.summary.subtotal),
                  style: theme.textTheme.titleMedium,
                ),
              ],
            ),

            const SizedBox(height: 16),

            FilledButton(
              onPressed:
                  !enabled || !cart.canCheckout || checkoutMutation.isLoading
                  ? null
                  : () async {
                      if (!isAuthenticated) {
                        AuthRoutes.pushLogin(
                          context,
                          redirect: LoginRedirect(AppRoutes.cart),
                        );
                        return;
                      }

                      final response = await ref
                          .read(checkoutMutationsProvider.notifier)
                          .createCheckoutSession();

                      if (!context.mounted) {
                        return;
                      }

                      context.push(
                        AppRoutes.checkoutSession(response.sessionId),
                      );
                    },
              style: FilledButton.styleFrom(
                minimumSize: const Size.fromHeight(52),
              ),
              child: checkoutMutation.isLoading
                  ? const SizedBox(
                      width: 18,
                      height: 18,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : Text('Checkout (${cart.summary.totalItems})'),
            ),
          ],
        ),
      ),
    );
  }
}
