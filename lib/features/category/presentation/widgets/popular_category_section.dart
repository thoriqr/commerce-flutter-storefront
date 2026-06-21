import 'package:commerce_flutter_storefront/features/category/data/models/popular_category.dart';
import 'package:commerce_flutter_storefront/features/category/presentation/widgets/popular_category_chip.dart';
import 'package:flutter/material.dart';

class PopularCategorySection extends StatelessWidget {
  const PopularCategorySection({super.key, required this.categories});

  final List<PopularCategory> categories;

  @override
  Widget build(BuildContext context) {
    if (categories.isEmpty) {
      return const SizedBox.shrink();
    }

    return SizedBox(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: categories.length,
        separatorBuilder: (_, _) => const SizedBox(width: 8),
        itemBuilder: (_, index) {
          return PopularCategoryChip(category: categories[index]);
        },
      ),
    );
  }
}
