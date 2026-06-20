import 'package:commerce_flutter_storefront/features/collection/data/models/collection_detail.dart';
import 'package:commerce_flutter_storefront/features/collection/data/models/collection_preview.dart';

abstract interface class CollectionRepository {
  Future<List<CollectionPreview>> getCollectionPreview();

  Future<CollectionDetail> getCollectionBySlug(String slug);
}
