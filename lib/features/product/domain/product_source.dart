sealed class ProductSource {
  const ProductSource();

  factory ProductSource.collection(String slug) = CollectionSource;

  factory ProductSource.category(String slugPath) = CategorySource;

  factory ProductSource.search(String query) = SearchSource;
}

final class CollectionSource extends ProductSource {
  const CollectionSource(this.slug);

  final String slug;
}

final class CategorySource extends ProductSource {
  const CategorySource(this.slugPath);

  final String slugPath;
}

final class SearchSource extends ProductSource {
  const SearchSource(this.query);

  final String query;
}
