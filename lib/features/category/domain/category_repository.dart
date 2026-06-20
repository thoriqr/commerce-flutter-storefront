import 'package:commerce_flutter_storefront/features/category/data/models/category_detail.dart';
import 'package:commerce_flutter_storefront/features/category/data/models/category_tree.dart';
import 'package:commerce_flutter_storefront/features/category/data/models/popular_category.dart';

abstract interface class CategoryRepository {
  Future<List<PopularCategory>> getPopularCategory();

  Future<List<CategoryTree>> getCategoryTree();

  Future<CategoryDetail> getCategoryDetail(String slugPath);
}
