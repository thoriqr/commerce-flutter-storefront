import 'package:commerce_flutter_storefront/features/product/data/models/product_sort_by.dart';
import 'package:commerce_flutter_storefront/features/product/data/models/sort_direction.dart';

enum ProductSortOption { newest, oldest, priceLowToHigh, priceHighToLow }

extension ProductSortOptionX on ProductSortOption {
  String get label {
    switch (this) {
      case ProductSortOption.newest:
        return 'Newest';

      case ProductSortOption.oldest:
        return 'Oldest';

      case ProductSortOption.priceLowToHigh:
        return 'Price: Low to High';

      case ProductSortOption.priceHighToLow:
        return 'Price: High to Low';
    }
  }

  ProductSortBy get sortBy {
    switch (this) {
      case ProductSortOption.newest:
      case ProductSortOption.oldest:
        return ProductSortBy.createdAt;

      case ProductSortOption.priceLowToHigh:
      case ProductSortOption.priceHighToLow:
        return ProductSortBy.price;
    }
  }

  SortDirection get sortDir {
    switch (this) {
      case ProductSortOption.newest:
      case ProductSortOption.priceHighToLow:
        return SortDirection.desc;

      case ProductSortOption.oldest:
      case ProductSortOption.priceLowToHigh:
        return SortDirection.asc;
    }
  }
}
