import 'package:commerce_flutter_storefront/features/collection/api/collection_api.dart';
import 'package:commerce_flutter_storefront/features/collection/models/collection_detail.dart';
import 'package:commerce_flutter_storefront/features/collection/models/collection_preview.dart';
import 'package:commerce_flutter_storefront/features/collection/repositories/collection_repository.dart';

class CollectionRepositoryImpl implements CollectionRepository {
  const CollectionRepositoryImpl(this._api);

  final CollectionApi _api;

  @override
  Future<List<CollectionPreview>> getCollectionPreview() async {
    final res = await _api.getCollectionPreview();

    return res.data;
  }

  @override
  Future<CollectionDetail> getCollectionBySlug(String slug) async {
    final res = await _api.getCollectionBySlug(slug);

    return res.data;
  }
}
