import 'package:commerce_flutter_storefront/features/catalog_filter/data/models/catalog_filter_group.dart';
import 'package:commerce_flutter_storefront/features/catalog_filter/presentation/providers/catalog_filter_provider.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/widgets/product_filter_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/product_sort_option.dart';
import '../../domain/product_source.dart';
import '../notifiers/product_listing_notifier.dart';

class ProductListingToolbarSection extends ConsumerWidget {
  const ProductListingToolbarSection({super.key, required this.source});

  final ProductSource source;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listing = ref.watch(productListingProvider(source));

    final state = switch (listing) {
      AsyncData(:final value) => value,
      _ => null,
    };

    final AsyncValue<List<CatalogFilterGroup>>? catalogFilters =
        switch (source) {
          CategorySource(:final slugPath) => ref.watch(
            catalogFilterByCategoryProvider(slugPath),
          ),

          SearchSource(:final query) => ref.watch(
            catalogFilterBySearchProvider(query),
          ),

          CollectionSource() => null,
        };

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 4, 16, 8),
      child: Row(
        children: [
          OutlinedButton.icon(
            onPressed: catalogFilters is AsyncLoading
                ? null
                : () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (_) {
                        return ProductFilterDrawer(
                          source: source,
                          catalogFilters: switch (catalogFilters) {
                            AsyncData(:final value) => value,
                            _ => [],
                          },
                        );
                      },
                    );
                  },
            icon: const Icon(Icons.tune),
            label: Text(
              (state?.activeFilterCount ?? 0) > 0
                  ? 'Filter (${state!.activeFilterCount})'
                  : 'Filter',
            ),
          ),

          const Spacer(),

          DropdownButton<ProductSortOption>(
            value: state?.selectedSort ?? ProductSortOption.newest,
            underline: const SizedBox(),
            items: ProductSortOption.values.map((option) {
              return DropdownMenuItem(value: option, child: Text(option.label));
            }).toList(),
            onChanged: (option) {
              if (option == null) return;

              ref
                  .read(productListingProvider(source).notifier)
                  .applySort(option);
            },
          ),
        ],
      ),
    );
  }
}
