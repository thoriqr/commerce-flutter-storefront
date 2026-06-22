import 'package:commerce_flutter_storefront/features/product/data/models/product_sort_by.dart';
import 'package:commerce_flutter_storefront/features/product/data/models/sort_direction.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_listing_query_params.freezed.dart';

@freezed
abstract class ProductListingQueryParams with _$ProductListingQueryParams {
  const factory ProductListingQueryParams({
    String? cursor,

    @Default(12) int limit,

    int? priceMin,

    int? priceMax,

    @Default(ProductSortBy.createdAt) ProductSortBy sortBy,

    @Default(SortDirection.desc) SortDirection sortDir,

    @Default({}) Map<String, String> filters,
  }) = _ProductListingQueryParams;
}

extension ProductListingQueryParamsX on ProductListingQueryParams {
  Map<String, dynamic> toQuery() {
    return {
      if (cursor != null) 'cursor': cursor,

      'limit': limit,

      if (priceMin != null) 'priceMin': priceMin,

      if (priceMax != null) 'priceMax': priceMax,

      'sortBy': sortBy.value,

      'sortDir': sortDir.value,

      ...filters,
    };
  }
}
