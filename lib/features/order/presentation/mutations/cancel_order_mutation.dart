import 'package:commerce_flutter_storefront/features/order/di/order_repository_provider.dart';
import 'package:commerce_flutter_storefront/features/order/presentation/providers/order_provider.dart';
import 'package:commerce_flutter_storefront/features/shared/mixins/async_mutation_mixin.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cancel_order_mutation.g.dart';

@riverpod
class CancelOrderMutation extends _$CancelOrderMutation
    with AsyncMutationMixin {
  @override
  FutureOr<void> build() {}

  Future<void> cancelOrder(String orderCode) {
    return guard(() async {
      await ref.read(orderRepositoryProvider).cancelOrder(orderCode);

      ref.invalidate(ordersProvider);
    });
  }
}
