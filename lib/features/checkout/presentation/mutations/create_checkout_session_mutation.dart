import 'dart:async';

import 'package:commerce_flutter_storefront/features/checkout/data/models/create_checkout_response.dart';
import 'package:commerce_flutter_storefront/features/checkout/di/checkout_repository_provider.dart';
import 'package:commerce_flutter_storefront/features/shared/mixins/async_mutation_mixin.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_checkout_session_mutation.g.dart';

@riverpod
class CreateCheckoutSessionMutation extends _$CreateCheckoutSessionMutation
    with AsyncMutationMixin {
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
}
