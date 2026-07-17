import 'package:commerce_flutter_storefront/features/checkout/data/models/confirm_checkout_response.dart';
import 'package:commerce_flutter_storefront/features/checkout/data/models/create_checkout_response.dart';
import 'package:commerce_flutter_storefront/features/checkout/data/models/set_checkout_address_request.dart';
import 'package:commerce_flutter_storefront/features/checkout/data/models/set_shipping_request.dart';
import 'package:commerce_flutter_storefront/features/checkout/data/models/shipping_cost.dart';
import 'package:commerce_flutter_storefront/features/checkout/data/models/shipping_courier_request.dart';
import 'package:commerce_flutter_storefront/features/checkout/di/checkout_repository_provider.dart';
import 'package:commerce_flutter_storefront/features/checkout/presentation/providers/checkout_provider.dart';
import 'package:commerce_flutter_storefront/features/shared/mixins/async_mutation_mixin.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'checkout_mutations.g.dart';

@riverpod
class CheckoutMutations extends _$CheckoutMutations with AsyncMutationMixin {
  @override
  FutureOr<void> build() {}

  Future<CreateCheckoutResponse> createCheckoutSession() {
    return guard(() async {
      final response = await ref
          .read(checkoutRepositoryProvider)
          .createCheckoutSession();

      return response;
    });
  }

  Future<ShippingCost> getShippingCost(
    int sessionId,
    ShippingCourierRequest request,
  ) {
    return guard(() async {
      final response = await ref
          .read(checkoutRepositoryProvider)
          .getShippingCost(sessionId, request);

      return response;
    });
  }

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

  Future<ConfirmCheckoutResponse> confirmCheckout(int sessionId) {
    return guard(() async {
      final response = await ref
          .read(checkoutRepositoryProvider)
          .confirmCheckout(sessionId);

      return response;
    });
  }
}
