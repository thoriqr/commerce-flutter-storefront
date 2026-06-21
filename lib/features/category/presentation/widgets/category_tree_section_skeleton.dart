import 'package:commerce_flutter_storefront/core/widgets/skeleton.dart';
import 'package:commerce_flutter_storefront/features/category/presentation/widgets/category_chip_skeleton.dart';
import 'package:flutter/material.dart';

class CategoryTreeSectionSkeleton extends StatelessWidget {
  const CategoryTreeSectionSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: 2,
      separatorBuilder: (_, _) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 24),
          child: Divider(height: 1),
        );
      },
      itemBuilder: (_, _) {
        return const _CategoryGroupSkeleton();
      },
    );
  }
}

class _CategoryGroupSkeleton extends StatelessWidget {
  const _CategoryGroupSkeleton();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Skeleton(
          child: Container(
            width: 160,
            height: 32,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),

        const SizedBox(height: 20),

        const Padding(
          padding: EdgeInsets.only(left: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _CategoryChildSkeleton(),
              SizedBox(height: 20),
              _CategoryChildSkeleton(),
              SizedBox(height: 20),
              _CategoryChildSkeleton(),
            ],
          ),
        ),
      ],
    );
  }
}

class _CategoryChildSkeleton extends StatelessWidget {
  const _CategoryChildSkeleton();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Skeleton(
          child: Container(
            width: 120,
            height: 20,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),

        const SizedBox(height: 10),

        const Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            CategoryChipSkeleton(),
            CategoryChipSkeleton(),
            CategoryChipSkeleton(),
          ],
        ),
      ],
    );
  }
}
