import 'package:commerce_flutter_storefront/features/home/presentation/widgets/home_collection_preview_section.dart';
import 'package:commerce_flutter_storefront/features/home/presentation/widgets/home_hero_section.dart';
import 'package:commerce_flutter_storefront/features/home/presentation/widgets/home_popular_category_section.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        HomeHeroSection(),
        SizedBox(height: 24),
        HomePopularCategorySection(),
        SizedBox(height: 24),
        HomeCollectionPreviewSection(),
      ],
    );
  }
}
