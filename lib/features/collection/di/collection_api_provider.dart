import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/network/providers/app_dio_provider.dart';
import '../data/datasource/collection_api.dart';

part 'collection_api_provider.g.dart';

@riverpod
CollectionApi collectionApi(Ref ref) {
  return CollectionApi(ref.watch(appDioProvider));
}
