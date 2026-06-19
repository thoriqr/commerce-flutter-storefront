import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/network/providers/dio_provider.dart';
import '../api/collection_api.dart';

part 'collection_api_provider.g.dart';

@riverpod
CollectionApi collectionApi(Ref ref) {
  return CollectionApi(ref.watch(dioProvider));
}
