import 'package:commerce_flutter_storefront/features/collection/providers/collection_api_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../repositories/collection_repository.dart';
import '../repositories/collection_repository_impl.dart';

part 'collection_repository_provider.g.dart';

@riverpod
CollectionRepository collectionRepository(Ref ref) {
  return CollectionRepositoryImpl(ref.watch(collectionApiProvider));
}
