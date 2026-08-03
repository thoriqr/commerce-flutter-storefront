import 'package:flutter/material.dart';

class ProductListingValidationErrorView extends StatelessWidget {
  const ProductListingValidationErrorView({
    super.key,
    required this.onResetFilter,
  });

  final Future<void> Function() onResetFilter;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.filter_alt_off, size: 88),

            const SizedBox(height: 24),

            Text(
              'Invalid filters',
              style: Theme.of(context).textTheme.headlineSmall,
            ),

            const SizedBox(height: 12),

            Text(
              'Some filters are no longer valid. Reset them to continue browsing.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),

            const SizedBox(height: 32),

            FilledButton(
              onPressed: onResetFilter,
              child: const Text('Reset Filters'),
            ),
          ],
        ),
      ),
    );
  }
}
