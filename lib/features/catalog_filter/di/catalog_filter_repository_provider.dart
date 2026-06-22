import 'package:commerce_flutter_storefront/features/catalog_filter/data/repositories/catalog_filter_repository_impl.dart';
import 'package:commerce_flutter_storefront/features/catalog_filter/di/catalog_filter_api_provider.dart';
import 'package:commerce_flutter_storefront/features/catalog_filter/domain/repositories/catalog_filter_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'catalog_filter_repository_provider.g.dart';

@riverpod
CatalogFilterRepository catalogFilterRepository(Ref ref) {
  return CatalogFilterRepositoryImpl(ref.watch(catalogFilterApiProvider));
}
