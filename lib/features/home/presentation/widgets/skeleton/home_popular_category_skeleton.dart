import 'package:commerce_flutter_storefront/features/category/presentation/widgets/category_chip_skeleton.dart';
import 'package:flutter/material.dart';
import 'package:commerce_flutter_storefront/core/widgets/skeleton.dart';

class HomePopularCategorySkeleton extends StatelessWidget {
  const HomePopularCategorySkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(
            width: 140,
            height: 20,
            child: Skeleton(
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.white),
              ),
            ),
          ),
        ),

        const SizedBox(height: 12),

        SizedBox(
          height: 40,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: 4,
            separatorBuilder: (_, _) => const SizedBox(width: 8),
            itemBuilder: (_, _) {
              return const CategoryChipSkeleton();
            },
          ),
        ),
      ],
    );
  }
}
