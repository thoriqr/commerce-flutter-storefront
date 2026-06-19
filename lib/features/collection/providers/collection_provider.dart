import 'package:commerce_flutter_storefront/features/collection/models/collection_detail.dart';
import 'package:commerce_flutter_storefront/features/collection/models/collection_preview.dart';
import 'package:commerce_flutter_storefront/features/collection/repositories/collection_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'collection_provider.g.dart';

@riverpod
Future<List<CollectionPreview>> collectionPreview(Ref ref) {
  return ref.watch(collectionRepositoryProvider).getCollectionPreview();
}

@riverpod
Future<CollectionDetail> collectionDetail(Ref ref, String slug) {
  return ref.watch(collectionRepositoryProvider).getCollectionBySlug(slug);
}
