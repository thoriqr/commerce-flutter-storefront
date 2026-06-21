import 'package:commerce_flutter_storefront/features/collection/presentation/providers/collection_provider.dart';
import 'package:commerce_flutter_storefront/features/collection/presentation/widgets/collection_preview_section.dart';
import 'package:commerce_flutter_storefront/features/home/presentation/widgets/home_collection_preview_section_skeleton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeCollectionPreviewSection extends ConsumerWidget {
  const HomeCollectionPreviewSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final collections = ref.watch(collectionPreviewProvider);

    return collections.when(
      data: (data) {
        return Column(
          children: [
            for (final collection in data) ...[
              CollectionPreviewSection(collection: collection),
            ],
          ],
        );
      },
      loading: () => const HomeCollectionPreviewSectionSkeleton(),
      error: (_, _) => const SizedBox.shrink(),
    );
  }
}
