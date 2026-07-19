import 'package:commerce_flutter_storefront/core/exceptions/app_exception.dart';
import 'package:commerce_flutter_storefront/core/router/app_routes.dart';
import 'package:commerce_flutter_storefront/core/utils/currency_utils.dart';
import 'package:commerce_flutter_storefront/features/checkout/data/models/checkout_session.dart';
import 'package:commerce_flutter_storefront/features/checkout/presentation/mutations/checkout_mutations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class CheckoutBottomBar extends ConsumerWidget {
  const CheckoutBottomBar({super.key, required this.checkout});

  final CheckoutSession checkout;

  String? get message {
    switch (checkout.reason) {
      case CheckoutBlockReason.invalidItems:
        return 'Please review the items in your order.';

      case CheckoutBlockReason.noAddress:
        return 'Please add a shipping address.';

      case CheckoutBlockReason.noShipping:
        return 'Please select a shipping method.';

      case CheckoutBlockReason.shippingNotCalculated:
        return 'Please calculate shipping before placing your order.';

      case null:
        return null;
    }
  }

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

    final mutation = ref.watch(checkoutMutationsProvider);

    final theme = Theme.of(context);

    return SafeArea(
      minimum: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (message != null) ...[
            Text(
              message!,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.error,
              ),
            ),

            const SizedBox(height: 8),
          ],

          Row(
            children: [
              Text('Total', style: theme.textTheme.bodyMedium),

              const Spacer(),

              Text(
                CurrencyUtils.formatRupiah(checkout.total),
                style: theme.textTheme.titleLarge,
              ),
            ],
          ),

          const SizedBox(height: 16),

          FilledButton(
            onPressed: !checkout.canPlaceOrder || mutation.isLoading
                ? null
                : () async {
                    final response = await ref
                        .read(checkoutMutationsProvider.notifier)
                        .confirmCheckout(checkout.sessionId);

                    if (!context.mounted) {
                      return;
                    }

                    context.go(AppRoutes.orderDetail(response.orderCode));
                  },
            child: mutation.isLoading
                ? const SizedBox(
                    width: 18,
                    height: 18,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Text('Place Order'),
          ),
        ],
      ),
    );
  }
}
