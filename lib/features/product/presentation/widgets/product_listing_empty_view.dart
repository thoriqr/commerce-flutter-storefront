import 'package:flutter/material.dart';

class ProductListingEmptyView extends StatelessWidget {
  const ProductListingEmptyView({
    super.key,
    required this.hasActiveFilters,
    required this.onClearFilters,
  });

  final bool hasActiveFilters;
  final Future<void> Function() onClearFilters;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.inventory_2_outlined, size: 88),

            const SizedBox(height: 24),

            Text('No products found', style: theme.textTheme.headlineSmall),

            const SizedBox(height: 12),

            Text(
              hasActiveFilters
                  ? 'Try adjusting or clearing your filters.'
                  : 'There are no products available at the moment.',
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium,
            ),

            if (hasActiveFilters) ...[
              const SizedBox(height: 32),

              FilledButton(
                onPressed: onClearFilters,
                child: const Text('Clear Filters'),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
