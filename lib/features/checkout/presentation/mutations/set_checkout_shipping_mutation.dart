import 'dart:async';

import 'package:commerce_flutter_storefront/features/checkout/data/models/set_shipping_request.dart';
import 'package:commerce_flutter_storefront/features/checkout/di/checkout_repository_provider.dart';
import 'package:commerce_flutter_storefront/features/checkout/presentation/providers/checkout_provider.dart';
import 'package:commerce_flutter_storefront/features/shared/mixins/async_mutation_mixin.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'set_checkout_shipping_mutation.g.dart';

@riverpod
class SetCheckoutShippingMutation extends _$SetCheckoutShippingMutation
    with AsyncMutationMixin {
  @override
  FutureOr<void> build() {}

  Future<void> setShippingCheckoutSession(
    int sessionId,
    SetShippingRequest request,
  ) {
    return guard(() async {
      await ref
          .read(checkoutRepositoryProvider)
          .setShippingCheckoutSession(sessionId, request);

      ref.invalidate(checkoutSessionProvider(sessionId));
    });
  }
}
