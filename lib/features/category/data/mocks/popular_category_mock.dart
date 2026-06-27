import '../models/popular_category.dart';

class PopularCategoryMock {
  const PopularCategoryMock._();

  static PopularCategory item() {
    return const PopularCategory(
      id: 1,
      name: 'T-Shirts',
      slug: 't-shirts',
      slugPath: 'fashion/t-shirts',
      totalSold: 100,
    );
  }

  static List<PopularCategory> items([int count = 8]) {
    return List.generate(count, (_) => item());
  }
}
