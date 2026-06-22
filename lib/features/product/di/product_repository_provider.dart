import 'package:commerce_flutter_storefront/features/product/data/repositories/product_repository_impl.dart';
import 'package:commerce_flutter_storefront/features/product/di/product_api_provider.dart';
import 'package:commerce_flutter_storefront/features/product/domain/repositories/product_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_repository_provider.g.dart';

@riverpod
ProductRepository productRepository(Ref ref) {
  return ProductRepositoryImpl(ref.watch(productApiProvider));
}
