import '../models/category_detail.dart';

class CategoryDetailMock {
  const CategoryDetailMock._();

  static CategoryDetail item() {
    return const CategoryDetail(
      category: CategoryInfo(
        id: 0,
        name: 'T-Shirts',
        description:
            'Discover our premium t-shirt collection for everyday wear.',
        slugPath: 't-shirts',
      ),
      breadcrumb: [
        CategorySummary(id: 1, name: 'Men', slugPath: 'men'),
        CategorySummary(id: 2, name: 'Clothing', slugPath: 'men/clothing'),
      ],
      children: [
        CategorySummary(
          id: 3,
          name: 'Oversized',
          slugPath: 'men/clothing/oversized',
        ),
        CategorySummary(id: 4, name: 'Basic', slugPath: 'men/clothing/basic'),
        CategorySummary(
          id: 5,
          name: 'Graphic',
          slugPath: 'men/clothing/graphic',
        ),
      ],
    );
  }
}
