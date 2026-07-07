import 'package:commerce_flutter_storefront/features/shipping/data/repositories/shipping_repository_impl.dart';
import 'package:commerce_flutter_storefront/features/shipping/di/shipping_api_provider.dart';
import 'package:commerce_flutter_storefront/features/shipping/domain/repositories/shipping_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'shipping_repository_provider.g.dart';

@riverpod
ShippingRepository shippingRepository(Ref ref) {
  return ShippingRepositoryImpl(ref.watch(shippingApiProvider));
}
