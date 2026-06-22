import 'package:commerce_flutter_storefront/features/catalog_filter/di/catalog_filter_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:commerce_flutter_storefront/features/catalog_filter/data/models/catalog_filter_group.dart';

part 'catalog_filter_provider.g.dart';

@riverpod
Future<List<CatalogFilterGroup>> catalogFilterBySearch(Ref ref, String query) {
  return ref
      .read(catalogFilterRepositoryProvider)
      .getCatalogFilterBySearch(query);
}

@riverpod
Future<List<CatalogFilterGroup>> catalogFilterByCategory(
  Ref ref,
  String slugPath,
) {
  return ref
      .read(catalogFilterRepositoryProvider)
      .getCatalogFilterByCategory(slugPath);
}
