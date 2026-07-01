import 'package:commerce_flutter_storefront/core/network/providers/app_dio_provider.dart';
import 'package:commerce_flutter_storefront/features/catalog_filter/data/datasource/catalog_filter_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'catalog_filter_api_provider.g.dart';

@riverpod
CatalogFilterApi catalogFilterApi(Ref ref) {
  return CatalogFilterApi(ref.watch(appDioProvider));
}
