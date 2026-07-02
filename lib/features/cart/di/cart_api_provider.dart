import 'package:commerce_flutter_storefront/core/network/providers/app_dio_provider.dart';
import 'package:commerce_flutter_storefront/features/cart/data/datasource/cart_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart_api_provider.g.dart';

@riverpod
CartApi cartApi(Ref ref) {
  return CartApi(ref.watch(appDioProvider));
}
