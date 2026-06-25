import 'package:commerce_flutter_storefront/features/category/presentation/providers/category_provider.dart';
import 'package:commerce_flutter_storefront/features/category/presentation/widgets/category_tree_section.dart';
import 'package:commerce_flutter_storefront/features/category/presentation/widgets/skeleton/category_tree_section_skeleton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoryTreePage extends ConsumerWidget {
  const CategoryTreePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(categoryTreeProvider);

    return categories.when(
      data: (data) {
        return CategoryTreeSection(categories: data);
      },
      loading: () => const CategoryTreeSectionSkeleton(),
      error: (error, _) {
        return Center(child: Text(error.toString()));
      },
    );
  }
}
