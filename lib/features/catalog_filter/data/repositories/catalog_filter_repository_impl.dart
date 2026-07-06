import 'package:commerce_flutter_storefront/core/network/api_response_extension.dart';
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
    return await _api.getCatalogFilterBySearch(query).unwrap();
  }

  @override
  Future<List<CatalogFilterGroup>> getCatalogFilterByCategory(
    String slugPath,
  ) async {
    return await _api.getCatalogFilterByCategory(slugPath).unwrap();
  }
}
