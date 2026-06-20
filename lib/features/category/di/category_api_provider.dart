import 'package:commerce_flutter_storefront/features/category/data/datasource/category_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/network/providers/dio_provider.dart';

part 'category_api_provider.g.dart';

@riverpod
CategoryApi categoryApi(Ref ref) {
  return CategoryApi(ref.watch(dioProvider));
}
