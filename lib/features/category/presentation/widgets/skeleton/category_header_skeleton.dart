import 'package:commerce_flutter_storefront/core/widgets/skeleton.dart';
import 'package:commerce_flutter_storefront/features/category/presentation/widgets/skeleton/category_chip_skeleton.dart';
import 'package:flutter/material.dart';

class CategoryHeaderSkeleton extends StatelessWidget {
  const CategoryHeaderSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Skeleton(
            child: Container(
              width: 180,
              height: 32,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),

          const SizedBox(height: 8),

          Skeleton(
            child: Container(
              width: 240,
              height: 16,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),

          const SizedBox(height: 16),

          SizedBox(
            height: 40,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 4,
              separatorBuilder: (_, _) => const SizedBox(width: 8),
              itemBuilder: (_, _) => const CategoryChipSkeleton(),
            ),
          ),
        ],
      ),
    );
  }
}
