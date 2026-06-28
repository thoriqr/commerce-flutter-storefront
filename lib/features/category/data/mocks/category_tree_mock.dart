import '../models/category_tree.dart';

class CategoryTreeMock {
  const CategoryTreeMock._();

  static CategoryTree item() {
    return CategoryTree(
      id: 1,
      parentId: null,
      name: 'Men',
      slug: 'men',
      slugPath: 'men',
      children: [
        CategoryTree(
          id: 2,
          parentId: 1,
          name: 'T-Shirts',
          slug: 't-shirts',
          slugPath: 'men/t-shirts',
          children: [
            CategoryTree(
              id: 3,
              parentId: 2,
              name: 'Oversized',
              slug: 'oversized',
              slugPath: 'men/t-shirts/oversized',
            ),
            CategoryTree(
              id: 4,
              parentId: 2,
              name: 'Basic',
              slug: 'basic',
              slugPath: 'men/t-shirts/basic',
            ),
            CategoryTree(
              id: 5,
              parentId: 2,
              name: 'Graphic',
              slug: 'graphic',
              slugPath: 'men/t-shirts/graphic',
            ),
          ],
        ),
        CategoryTree(
          id: 6,
          parentId: 1,
          name: 'Jackets',
          slug: 'jackets',
          slugPath: 'men/jackets',
          children: [
            CategoryTree(
              id: 7,
              parentId: 6,
              name: 'Bomber',
              slug: 'bomber',
              slugPath: 'men/jackets/bomber',
            ),
            CategoryTree(
              id: 8,
              parentId: 6,
              name: 'Denim',
              slug: 'denim',
              slugPath: 'men/jackets/denim',
            ),
          ],
        ),
      ],
    );
  }

  static List<CategoryTree> items([int count = 4]) {
    return List.generate(count, (_) => item());
  }
}
