import 'package:commerce_flutter_storefront/features/category/data/datasource/category_api.dart';
import 'package:commerce_flutter_storefront/features/category/data/models/category_detail.dart';
import 'package:commerce_flutter_storefront/features/category/data/models/category_tree.dart';
import 'package:commerce_flutter_storefront/features/category/data/models/popular_category.dart';
import 'package:commerce_flutter_storefront/features/category/domain/category_repository.dart';

class CategoryRepositoryImpl implements CategoryRepository {
  const CategoryRepositoryImpl(this._api);

  final CategoryApi _api;

  @override
  Future<List<PopularCategory>> getPopularCategory() async {
    final res = await _api.getPopularCategory();

    return res.data;
  }

  @override
  Future<List<CategoryTree>> getCategoryTree() async {
    final res = await _api.getCategoryTree();

    return res.data;
  }

  @override
  Future<CategoryDetail> getCategoryDetail(String slugPath) async {
    final res = await _api.getCategoryDetail(slugPath);

    return res.data;
  }
}
