import 'package:commerce_flutter_storefront/features/checkout/data/repositories/checkout_repository_impl.dart';
import 'package:commerce_flutter_storefront/features/checkout/di/checkout_api_provider.dart';
import 'package:commerce_flutter_storefront/features/checkout/domain/repositories/checkout_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'checkout_repository_provider.g.dart';

@riverpod
CheckoutRepository checkoutRepository(Ref ref) {
  return CheckoutRepositoryImpl(ref.watch(checkoutApiProvider));
}
