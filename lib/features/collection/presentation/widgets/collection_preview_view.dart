import 'package:commerce_flutter_storefront/core/router/app_routes.dart';
import 'package:commerce_flutter_storefront/features/collection/data/models/collection_preview.dart';
import 'package:commerce_flutter_storefront/features/product/domain/product_source.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CollectionPreviewView extends StatelessWidget {
  const CollectionPreviewView({super.key, required this.collection});

  final CollectionPreview collection;

  @override
  Widget build(BuildContext context) {
    final source = ProductSource.collection(collection.slug);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: InkWell(
            borderRadius: BorderRadius.circular(8),
            onTap: () {
              context.push(AppRoutes.products, extra: source);
            },
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    collection.name,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                const Text('See All'),
                const SizedBox(width: 4),
                const Icon(Icons.chevron_right, size: 18),
              ],
            ),
          ),
        ),

        const SizedBox(height: 12),

        SizedBox(
          height: 260,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: collection.products.length,
            separatorBuilder: (_, _) => const SizedBox(width: 12),
            itemBuilder: (_, index) {
              return ProductCard(product: collection.products[index]);
            },
          ),
        ),
      ],
    );
  }
}
