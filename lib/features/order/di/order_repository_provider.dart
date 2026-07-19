import 'package:commerce_flutter_storefront/features/order/data/repositories/order_repository_impl.dart';
import 'package:commerce_flutter_storefront/features/order/di/order_api_provider.dart';
import 'package:commerce_flutter_storefront/features/order/domain/repositories/order_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'order_repository_provider.g.dart';

@riverpod
OrderRepository orderRepository(Ref ref) {
  return OrderRepositoryImpl(ref.watch(orderApiProvider));
}
