import 'package:commerce_flutter_storefront/core/network/providers/app_dio_provider.dart';
import 'package:commerce_flutter_storefront/features/order/data/datasource/order_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'order_api_provider.g.dart';

@riverpod
OrderApi orderApi(Ref ref) {
  return OrderApi(ref.watch(appDioProvider));
}
