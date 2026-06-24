import 'package:commerce_flutter_storefront/core/models/cursor_meta.dart';
import 'package:commerce_flutter_storefront/features/product/data/models/product_listing_query_params.dart';
import 'package:commerce_flutter_storefront/features/product/data/models/product_sort_option.dart';
import 'package:commerce_flutter_storefront/features/product/data/models/product_summary.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_listing_state.freezed.dart';

@freezed
abstract class ProductListingState with _$ProductListingState {
  const factory ProductListingState({
    required List<ProductSummary> products,
    required CursorMeta meta,
    required ProductListingQueryParams params,
    required ProductSortOption selectedSort,

    @Default(0) int activeFilterCount,
    @Default(false) bool isLoadingMore,
  }) = _ProductListingState;
}
