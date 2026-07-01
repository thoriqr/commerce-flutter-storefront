import 'package:commerce_flutter_storefront/core/network/providers/app_dio_provider.dart';
import 'package:commerce_flutter_storefront/features/product/data/datasource/product_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_api_provider.g.dart';

@riverpod
ProductApi productApi(Ref ref) {
  return ProductApi(ref.watch(appDioProvider));
}
