import 'dart:async';

import 'package:commerce_flutter_storefront/features/cart/presentation/providers/cart_provider.dart';
import 'package:commerce_flutter_storefront/features/checkout/data/models/confirm_checkout_response.dart';
import 'package:commerce_flutter_storefront/features/checkout/di/checkout_repository_provider.dart';
import 'package:commerce_flutter_storefront/features/checkout/presentation/providers/checkout_provider.dart';
import 'package:commerce_flutter_storefront/features/shared/mixins/async_mutation_mixin.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'confirm_checkout_mutation.g.dart';

@riverpod
class ConfirmCheckoutMutation extends _$ConfirmCheckoutMutation
    with AsyncMutationMixin {
  @override
  FutureOr<void> build() {}

  Future<ConfirmCheckoutResponse> confirmCheckout(int sessionId) {
    return guard(() async {
      final response = await ref
          .read(checkoutRepositoryProvider)
          .confirmCheckout(sessionId);

      ref.invalidate(cartProvider);

      ref.invalidate(checkoutSessionProvider(sessionId));

      return response;
    });
  }
}
