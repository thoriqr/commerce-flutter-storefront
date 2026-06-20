import 'package:commerce_flutter_storefront/features/category/data/models/category_detail.dart';
import 'package:commerce_flutter_storefront/features/category/data/models/category_tree.dart';
import 'package:commerce_flutter_storefront/features/category/data/models/popular_category.dart';
import 'package:commerce_flutter_storefront/features/category/di/category_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'category_provider.g.dart';

@riverpod
Future<List<PopularCategory>> popularCategory(Ref ref) {
  return ref.read(categoryRepositoryProvider).getPopularCategory();
}

@riverpod
Future<List<CategoryTree>> categoryTree(Ref ref) {
  return ref.read(categoryRepositoryProvider).getCategoryTree();
}

@riverpod
Future<CategoryDetail> categoryDetail(Ref ref, String slugPath) {
  return ref.watch(categoryRepositoryProvider).getCategoryDetail(slugPath);
}
