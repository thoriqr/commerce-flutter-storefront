import 'package:commerce_flutter_storefront/features/category/data/models/popular_category.dart';
import 'package:commerce_flutter_storefront/features/category/presentation/widgets/category_chip.dart';
import 'package:flutter/material.dart';

class PopularCategoryView extends StatelessWidget {
  const PopularCategoryView({super.key, required this.categories});

  final List<PopularCategory> categories;

  @override
  Widget build(BuildContext context) {
    if (categories.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Shop by Category',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),

        const SizedBox(height: 12),

        SizedBox(
          height: 40,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: categories.length,
            separatorBuilder: (_, _) => const SizedBox(width: 8),
            itemBuilder: (_, index) {
              return CategoryChip(
                label: categories[index].name,
                slugPath: categories[index].slugPath,
              );
            },
          ),
        ),
      ],
    );
  }
}
