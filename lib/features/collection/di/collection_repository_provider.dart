import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:commerce_flutter_storefront/features/collection/di/collection_api_provider.dart';

import '../domain/repositories/collection_repository.dart';
import '../data/repositories/collection_repository_impl.dart';

part 'collection_repository_provider.g.dart';

@riverpod
CollectionRepository collectionRepository(Ref ref) {
  return CollectionRepositoryImpl(ref.watch(collectionApiProvider));
}
