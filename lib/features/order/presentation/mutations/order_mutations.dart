import 'package:commerce_flutter_storefront/features/order/di/order_repository_provider.dart';
import 'package:commerce_flutter_storefront/features/order/presentation/providers/order_provider.dart';
import 'package:commerce_flutter_storefront/features/shared/mixins/async_mutation_mixin.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'order_mutations.g.dart';

@riverpod
class OrderMutations extends _$OrderMutations with AsyncMutationMixin {
  @override
  FutureOr<void> build() {}

  Future<void> confirmDelivered(String orderCode) {
    return guard(() async {
      await ref.read(orderRepositoryProvider).confirmDelivered(orderCode);

      ref.invalidate(ordersProvider);
    });
  }

  Future<void> cancelOrder(String orderCode) {
    return guard(() async {
      await ref.read(orderRepositoryProvider).cancelOrder(orderCode);

      ref.invalidate(ordersProvider);
    });
  }

  Future<void> createSnapToken(String orderCode) {
    return guard(() async {
      await ref.read(orderRepositoryProvider).createSnapToken(orderCode);

      ref.invalidate(ordersProvider);
    });
  }
}
