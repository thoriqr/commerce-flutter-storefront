import 'package:commerce_flutter_storefront/features/catalog_filter/data/datasource/catalog_filter_api.dart';
import 'package:commerce_flutter_storefront/features/catalog_filter/data/models/catalog_filter_group.dart';
import 'package:commerce_flutter_storefront/features/catalog_filter/domain/repositories/catalog_filter_repository.dart';

class CatalogFilterRepositoryImpl implements CatalogFilterRepository {
  const CatalogFilterRepositoryImpl(this._api);

  final CatalogFilterApi _api;

  @override
  Future<List<CatalogFilterGroup>> getCatalogFilterBySearch(
    String query,
  ) async {
    final res = await _api.getCatalogFilterBySearch(query);

    return res.data;
  }

  @override
  Future<List<CatalogFilterGroup>> getCatalogFilterByCategory(
    String slugPath,
  ) async {
    final res = await _api.getCatalogFilterByCategory(slugPath);

    return res.data;
  }
}
