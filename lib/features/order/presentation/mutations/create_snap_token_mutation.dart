import 'package:commerce_flutter_storefront/features/order/di/order_repository_provider.dart';
import 'package:commerce_flutter_storefront/features/order/presentation/providers/order_provider.dart';
import 'package:commerce_flutter_storefront/features/shared/mixins/async_mutation_mixin.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_snap_token_mutation.g.dart';

@riverpod
class CreateSnapTokenMutation extends _$CreateSnapTokenMutation
    with AsyncMutationMixin {
  @override
  FutureOr<void> build() {}

  Future<void> createSnapToken(String orderCode) {
    return guard(() async {
      await ref.read(orderRepositoryProvider).createSnapToken(orderCode);

      ref.invalidate(ordersProvider);
    });
  }
}
