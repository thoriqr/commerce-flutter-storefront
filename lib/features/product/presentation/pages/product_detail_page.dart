import 'package:commerce_flutter_storefront/core/router/app_routes.dart';
import 'package:commerce_flutter_storefront/features/product/domain/product_source.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/widgets/product_bottom_bar.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/widgets/product_detail_content.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/app_search_header.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppSearchHeader(
            initialValue: '',
            onSearch: (query) {
              context.push(AppRoutes.products, extra: SearchSource(query));
            },
          ),

          Expanded(child: ProductDetailContent(productId: id)),
        ],
      ),

      bottomNavigationBar: ProductBottomBar(productId: id),
    );
  }
}
