import 'package:commerce_flutter_storefront/core/widgets/skeleton.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/widgets/product_card_skeleton.dart';
import 'package:flutter/material.dart';

class CollectionPreviewSectionSkeleton extends StatelessWidget {
  const CollectionPreviewSectionSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Skeleton(
            child: Container(
              width: 160,
              height: 24,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
        ),

        const SizedBox(height: 12),

        SizedBox(
          height: 260,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: 3,
            separatorBuilder: (_, _) => const SizedBox(width: 12),
            itemBuilder: (_, _) {
              return const ProductCardSkeleton();
            },
          ),
        ),
      ],
    );
  }
}
