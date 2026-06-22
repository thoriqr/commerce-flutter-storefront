import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:commerce_flutter_storefront/features/collection/data/models/collection_detail.dart';
import 'package:commerce_flutter_storefront/features/collection/data/models/collection_preview.dart';
import 'package:commerce_flutter_storefront/features/collection/di/collection_repository_provider.dart';

part 'collection_provider.g.dart';

@riverpod
Future<List<CollectionPreview>> collectionPreview(Ref ref) {
  return ref.read(collectionRepositoryProvider).getCollectionPreview();
}

@riverpod
Future<CollectionDetail> collectionDetail(Ref ref, String slug) {
  return ref.read(collectionRepositoryProvider).getCollectionBySlug(slug);
}
