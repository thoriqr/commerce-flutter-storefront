import 'package:commerce_flutter_storefront/features/category/presentation/providers/category_provider.dart';
import 'package:commerce_flutter_storefront/features/category/presentation/widgets/category_tree_view.dart';
import 'package:commerce_flutter_storefront/features/shell/presentation/widgets/app_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
      appBar: const AppTopBar(),
      body: Skeletonizer(
        enabled: categoriesAsync.isLoading,
        child: CategoryTreeView(categories: categories),
      ),
    );
  }
}
