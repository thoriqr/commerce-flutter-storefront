import 'package:commerce_flutter_storefront/features/category/data/models/category_detail.dart';
import 'package:commerce_flutter_storefront/features/category/presentation/widgets/category_chip.dart';
import 'package:flutter/material.dart';

class CategoryHeader extends StatelessWidget {
  const CategoryHeader({super.key, required this.category});

  final CategoryDetail category;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            category.category.name,
            style: theme.textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            'Showing products in ${category.category.name}',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),

          if (category.children.isNotEmpty) ...[
            const SizedBox(height: 16),

            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                for (final child in category.children)
                  CategoryChip(label: child.name, slugPath: child.slugPath),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
