import 'package:commerce_flutter_storefront/core/network/api_response_extension.dart';
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
    return await _api.getPopularCategory().unwrap();
  }

  @override
  Future<List<CategoryTree>> getCategoryTree() async {
    return await _api.getCategoryTree().unwrap();
  }

  @override
  Future<CategoryDetail> getCategoryDetail(String slugPath) async {
    return await _api.getCategoryDetail(slugPath).unwrap();
  }
}
