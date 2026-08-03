import 'package:flutter/material.dart';

class ProductDetailNotFoundView extends StatelessWidget {
  const ProductDetailNotFoundView({super.key, required this.onBackHome});

  final VoidCallback onBackHome;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.search_off, size: 88),

            const SizedBox(height: 24),

            Text(
              'Product not found',
              style: Theme.of(context).textTheme.headlineSmall,
            ),

            const SizedBox(height: 12),

            Text(
              'This product is no longer available.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),

            const SizedBox(height: 32),

            FilledButton(
              onPressed: onBackHome,
              child: const Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
