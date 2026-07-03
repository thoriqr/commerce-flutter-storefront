import 'package:commerce_flutter_storefront/core/router/app_routes.dart';
import 'package:commerce_flutter_storefront/features/category/presentation/providers/category_provider.dart';
import 'package:commerce_flutter_storefront/features/category/presentation/widgets/category_tree_view.dart';
import 'package:commerce_flutter_storefront/features/product/domain/product_source.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/app_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:commerce_flutter_storefront/features/category/data/mocks/category_tree_mock.dart';

class CategoryTreePage extends ConsumerWidget {
  const CategoryTreePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoriesAsync = ref.watch(categoryTreeProvider);

    final categories = switch (categoriesAsync) {
      AsyncData(:final value) => value,
      _ => CategoryTreeMock.items(),
    };

    return Scaffold(
      appBar: AppHeader(
        showBackButton: false,
        onSearch: (query) {
          context.push(AppRoutes.products, extra: SearchSource(query));
        },
      ),
      body: Skeletonizer(
        enabled: categoriesAsync.isLoading,
        child: CategoryTreeView(categories: categories),
      ),
    );
  }
}
