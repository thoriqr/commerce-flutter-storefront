import 'package:commerce_flutter_storefront/features/product/domain/product_source.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/widgets/product_category_header_section.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/widgets/product_collection_header_section.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/widgets/product_search_header_section.dart';
import 'package:flutter/material.dart';

class ProductListingPage extends StatelessWidget {
  const ProductListingPage({super.key, required this.source});

  final ProductSource source;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          _buildHeader(),

          const Expanded(child: SizedBox()),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    switch (source) {
      case CollectionSource(:final slug):
        return ProductCollectionHeaderSection(slug: slug);

      case CategorySource(:final slugPath):
        return ProductCategoryHeaderSection(slugPath: slugPath);

      case SearchSource(:final query):
        return ProductSearchHeaderSection(query: query);
    }
  }
}
