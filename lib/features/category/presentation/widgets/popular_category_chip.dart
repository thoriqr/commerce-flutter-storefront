import 'package:commerce_flutter_storefront/core/router/app_routes.dart';
import 'package:commerce_flutter_storefront/features/category/data/models/popular_category.dart';
import 'package:commerce_flutter_storefront/features/product/domain/product_source.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PopularCategoryChip extends StatelessWidget {
  const PopularCategoryChip({super.key, required this.category});

  final PopularCategory category;

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      label: Text(category.name),
      onPressed: () {
        context.push(
          AppRoutes.products,
          extra: ProductSource.category(category.slugPath),
        );
      },
    );
  }
}
