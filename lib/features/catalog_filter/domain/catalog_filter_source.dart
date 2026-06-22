sealed class CatalogFilterSource {
  const CatalogFilterSource();

  factory CatalogFilterSource.category(String slugPath) =
      CategoryCatalogFilterSource;

  factory CatalogFilterSource.search(String query) = SearchCatalogFilterSource;
}

final class SearchCatalogFilterSource extends CatalogFilterSource {
  const SearchCatalogFilterSource(this.query);

  final String query;
}

final class CategoryCatalogFilterSource extends CatalogFilterSource {
  const CategoryCatalogFilterSource(this.slugPath);

  final String slugPath;
}
