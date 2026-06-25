import 'package:commerce_flutter_storefront/features/collection/presentation/widgets/skeleton/collection_preview_section_skeleton.dart';
import 'package:flutter/material.dart';

class HomeCollectionPreviewSectionSkeleton extends StatelessWidget {
  const HomeCollectionPreviewSectionSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CollectionPreviewSectionSkeleton(),
        CollectionPreviewSectionSkeleton(),
      ],
    );
  }
}
