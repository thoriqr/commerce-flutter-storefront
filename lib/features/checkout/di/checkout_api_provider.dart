import 'package:commerce_flutter_storefront/core/network/providers/app_dio_provider.dart';
import 'package:commerce_flutter_storefront/features/checkout/data/datasource/checkout_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'checkout_api_provider.g.dart';

@riverpod
CheckoutApi checkoutApi(Ref ref) {
  return CheckoutApi(ref.watch(appDioProvider));
}
