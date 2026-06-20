import 'package:commerce_flutter_storefront/features/category/data/repositories/category_repository_impl.dart';
import 'package:commerce_flutter_storefront/features/category/di/category_api_provider.dart';
import 'package:commerce_flutter_storefront/features/category/domain/category_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'category_repository_provider.g.dart';

@riverpod
CategoryRepository categoryRepository(Ref ref) {
  return CategoryRepositoryImpl(ref.watch(categoryApiProvider));
}
