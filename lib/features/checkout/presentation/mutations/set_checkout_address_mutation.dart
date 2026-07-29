import 'dart:async';

import 'package:commerce_flutter_storefront/features/checkout/data/models/set_checkout_address_request.dart';
import 'package:commerce_flutter_storefront/features/checkout/di/checkout_repository_provider.dart';
import 'package:commerce_flutter_storefront/features/checkout/presentation/providers/checkout_provider.dart';
import 'package:commerce_flutter_storefront/features/shared/mixins/async_mutation_mixin.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'set_checkout_address_mutation.g.dart';

@riverpod
class SetCheckoutAddressMutation extends _$SetCheckoutAddressMutation
    with AsyncMutationMixin {
  @override
  FutureOr<void> build() {}

  Future<void> setAddressCheckoutSession(
    int sessionId,
    SetCheckoutAddressRequest request,
  ) {
    return guard(() async {
      await ref
          .read(checkoutRepositoryProvider)
          .setAddressCheckoutSession(sessionId, request);

      ref.invalidate(checkoutSessionProvider(sessionId));
    });
  }
}
