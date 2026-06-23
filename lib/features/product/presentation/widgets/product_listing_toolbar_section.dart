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

    return listing.when(
      loading: () => const SizedBox.shrink(),
      error: (_, _) => const SizedBox.shrink(),
      data: (state) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
          child: Row(
            children: [
              OutlinedButton.icon(
                onPressed: () {
                  debugPrint('OPEN FILTER');
                },
                icon: const Icon(Icons.tune),
                label: const Text('Filter'),
              ),

              const Spacer(),

              DropdownButton<ProductSortOption>(
                value: state.selectedSort,
                underline: const SizedBox(),
                items: ProductSortOption.values.map((option) {
                  return DropdownMenuItem(
                    value: option,
                    child: Text(option.label),
                  );
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
      },
    );
  }
}
