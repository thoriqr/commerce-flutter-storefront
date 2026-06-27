import 'package:commerce_flutter_storefront/features/catalog_filter/data/models/catalog_filter_group.dart';
import 'package:commerce_flutter_storefront/features/catalog_filter/presentation/providers/catalog_filter_provider.dart';

import 'package:commerce_flutter_storefront/features/product/presentation/widgets/product_filter_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/product_sort_option.dart';
import '../../domain/product_source.dart';
import '../notifiers/product_listing_notifier.dart';

class ProductListingToolbar extends ConsumerWidget {
  const ProductListingToolbar({super.key, required this.source});

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

    final activeFilterCount = state?.activeFilterCount ?? 0;
    final selectedSort = state?.selectedSort ?? ProductSortOption.newest;

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
              activeFilterCount > 0 ? 'Filter ($activeFilterCount)' : 'Filter',
            ),
            style: OutlinedButton.styleFrom(
              minimumSize: const Size(0, 40),
              padding: const EdgeInsets.symmetric(horizontal: 14),
              foregroundColor: Theme.of(context).colorScheme.onSurface,
              textStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
              elevation: 0,
              shadowColor: Colors.transparent,
              surfaceTintColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(999),
              ),
              side: BorderSide(color: Theme.of(context).colorScheme.outline),
            ),
          ),

          const Spacer(),

          PopupMenuButton<ProductSortOption>(
            onSelected: (option) {
              ref
                  .read(productListingProvider(source).notifier)
                  .applySort(option);
            },
            itemBuilder: (context) {
              return ProductSortOption.values.map((option) {
                final isSelected = option == selectedSort;

                return PopupMenuItem<ProductSortOption>(
                  value: option,
                  child: Row(
                    children: [
                      Expanded(child: Text(option.label)),
                      if (isSelected)
                        Icon(
                          Icons.check,
                          size: 18,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                    ],
                  ),
                );
              }).toList();
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  selectedSort.label,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w500),
                ),
                const SizedBox(width: 4),
                const Icon(Icons.keyboard_arrow_down, size: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
