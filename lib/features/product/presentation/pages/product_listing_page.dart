import 'package:commerce_flutter_storefront/core/router/app_routes.dart';
import 'package:commerce_flutter_storefront/features/product/domain/product_source.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/widgets/product_listing_content.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/app_search_header.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductListingPage extends StatelessWidget {
  const ProductListingPage({super.key, required this.source});

  final ProductSource source;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppSearchHeader(
            initialValue: switch (source) {
              SearchSource(:final query) => query,
              _ => '',
            },
            onSearch: (query) {
              switch (source) {
                case SearchSource():
                  context.replace(
                    AppRoutes.products,
                    extra: SearchSource(query),
                  );

                default:
                  context.push(AppRoutes.products, extra: SearchSource(query));
              }
            },
          ),

          Expanded(child: ProductListingContent(source: source)),
        ],
      ),
    );
  }
}
