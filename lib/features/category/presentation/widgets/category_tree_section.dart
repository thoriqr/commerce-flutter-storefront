import 'package:commerce_flutter_storefront/core/router/app_routes.dart';
import 'package:commerce_flutter_storefront/features/category/data/models/category_tree.dart';
import 'package:commerce_flutter_storefront/features/category/presentation/widgets/category_chip.dart';
import 'package:commerce_flutter_storefront/features/product/domain/product_source.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CategoryTreeSection extends StatelessWidget {
  const CategoryTreeSection({super.key, required this.categories});

  final List<CategoryTree> categories;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: categories.length,
      separatorBuilder: (_, _) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 24),
          child: Divider(height: 1),
        );
      },
      itemBuilder: (_, index) {
        return CategoryGroup(category: categories[index]);
      },
    );
  }
}

class CategoryGroup extends StatelessWidget {
  const CategoryGroup({super.key, required this.category});

  final CategoryTree category;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: () {
            context.push(
              AppRoutes.products,
              extra: ProductSource.category(category.slugPath),
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Row(
              children: [
                Text(
                  category.name,
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),

                const SizedBox(width: 6),

                const Icon(Icons.north_east, size: 18),
              ],
            ),
          ),
        ),

        const SizedBox(height: 20),

        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (final child in category.children)
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: _CategoryChildSection(category: child),
                ),
            ],
          ),
        ),
      ],
    );
  }
}

class _CategoryChildSection extends StatelessWidget {
  const _CategoryChildSection({required this.category});

  final CategoryTree category;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: () {
            context.push(
              AppRoutes.products,
              extra: ProductSource.category(category.slugPath),
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 2),
            child: Text(
              category.name,
              style: theme.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),

        if (category.children.isNotEmpty) ...[
          const SizedBox(height: 10),

          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              for (final grandchild in category.children)
                CategoryChip(
                  label: grandchild.name,
                  slugPath: grandchild.slugPath,
                ),
            ],
          ),
        ],
      ],
    );
  }
}
