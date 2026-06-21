import 'package:commerce_flutter_storefront/core/widgets/skeleton.dart';
import 'package:flutter/material.dart';

class CategoryChipSkeleton extends StatelessWidget {
  const CategoryChipSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeleton(
      child: Container(
        width: 110,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(999),
        ),
      ),
    );
  }
}
