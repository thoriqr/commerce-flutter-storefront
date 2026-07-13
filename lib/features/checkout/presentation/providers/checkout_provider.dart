import 'package:commerce_flutter_storefront/features/checkout/data/models/checkout_session.dart';
import 'package:commerce_flutter_storefront/features/checkout/data/models/warehouse_origin.dart';
import 'package:commerce_flutter_storefront/features/checkout/di/checkout_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'checkout_provider.g.dart';

@riverpod
Future<CheckoutSession> checkoutSession(Ref ref, int sessionId) {
  return ref.read(checkoutRepositoryProvider).getCheckoutSession(sessionId);
}

@riverpod
Future<WarehouseOrigin> warehouseOrigin(Ref ref) {
  return ref.read(checkoutRepositoryProvider).getWarehouseOrigin();
}
