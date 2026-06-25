import 'package:commerce_flutter_storefront/features/collection/presentation/providers/collection_provider.dart';
import 'package:commerce_flutter_storefront/features/collection/presentation/widgets/collection_header.dart';
import 'package:commerce_flutter_storefront/features/collection/presentation/widgets/skeleton/collection_header_skeleton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductCollectionHeaderSection extends ConsumerWidget {
  const ProductCollectionHeaderSection({super.key, required this.slug});

  final String slug;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final collectionAsync = ref.watch(collectionDetailProvider(slug));

    return collectionAsync.when(
      data: (collection) {
        return CollectionHeader(collection: collection);
      },

      loading: () => const CollectionHeaderSkeleton(),

      error: (_, _) {
        return const Padding(
          padding: EdgeInsets.all(16),
          child: Text('Failed to load collection'),
        );
      },
    );
  }
}
