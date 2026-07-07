import 'package:commerce_flutter_storefront/core/network/providers/app_dio_provider.dart';
import 'package:commerce_flutter_storefront/features/shipping/data/datasource/shipping_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'shipping_api_provider.g.dart';

@riverpod
ShippingApi shippingApi(Ref ref) {
  return ShippingApi(ref.watch(appDioProvider));
}
