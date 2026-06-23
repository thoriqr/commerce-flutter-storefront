import 'package:flutter/material.dart';

import '../../data/models/product_sort_option.dart';
import '../../domain/product_source.dart';

class ProductListingToolbar extends StatelessWidget {
  const ProductListingToolbar({
    super.key,
    required this.source,
    required this.selectedSort,
    required this.onSortChanged,
    required this.onFilterPressed,
  });

  final ProductSource source;

  final ProductSortOption selectedSort;

  final ValueChanged<ProductSortOption> onSortChanged;

  final VoidCallback onFilterPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
      child: Row(
        children: [
          OutlinedButton.icon(
            onPressed: onFilterPressed,
            icon: const Icon(Icons.tune),
            label: const Text('Filter'),
          ),

          const Spacer(),

          DropdownButton<ProductSortOption>(
            value: selectedSort,
            underline: const SizedBox(),
            items: ProductSortOption.values.map((option) {
              return DropdownMenuItem(value: option, child: Text(option.label));
            }).toList(),
            onChanged: (value) {
              if (value != null) {
                onSortChanged(value);
              }
            },
          ),
        ],
      ),
    );
  }
}
