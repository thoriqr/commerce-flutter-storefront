import 'package:commerce_flutter_storefront/core/router/app_routes.dart';
import 'package:commerce_flutter_storefront/features/product/domain/product_source.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CategoryChip extends StatelessWidget {
  const CategoryChip({super.key, required this.label, required this.slugPath});

  final String label;
  final String slugPath;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(999),
      onTap: () {
        context.push(
          AppRoutes.products,
          extra: ProductSource.category(slugPath),
        );
      },
      child: Ink(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: const Color(0xFFF1EAF5),
          borderRadius: BorderRadius.circular(999),
        ),
        child: Text(
          label,
          style: Theme.of(
            context,
          ).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
