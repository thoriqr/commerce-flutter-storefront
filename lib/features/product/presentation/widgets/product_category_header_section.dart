import 'package:commerce_flutter_storefront/features/category/presentation/providers/category_provider.dart';
import 'package:commerce_flutter_storefront/features/category/presentation/widgets/category_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductCategoryHeaderSection extends ConsumerWidget {
  const ProductCategoryHeaderSection({super.key, required this.slugPath});

  final String slugPath;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoryAsync = ref.watch(categoryDetailProvider(slugPath));

    return categoryAsync.when(
      data: (category) {
        return CategoryHeader(category: category);
      },
      loading: () {
        return const Padding(
          padding: EdgeInsets.all(24),
          child: Center(child: CircularProgressIndicator()),
        );
      },
      error: (_, _) {
        return const Padding(
          padding: EdgeInsets.all(16),
          child: Text('Failed to load category'),
        );
      },
    );
  }
}
