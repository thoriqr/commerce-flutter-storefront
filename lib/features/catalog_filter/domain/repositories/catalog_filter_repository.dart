import 'package:commerce_flutter_storefront/features/catalog_filter/data/models/catalog_filter_group.dart';

abstract interface class CatalogFilterRepository {
  Future<List<CatalogFilterGroup>> getCatalogFilterBySearch(String query);

  Future<List<CatalogFilterGroup>> getCatalogFilterByCategory(String slugPath);
}
