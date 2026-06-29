import 'package:commerce_flutter_storefront/core/router/app_routes.dart';
import 'package:commerce_flutter_storefront/features/product/domain/product_source.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/providers/product_provider.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/providers/selected_variant_id_provider.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/widgets/product_bottom_bar.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/widgets/product_detail_content.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/app_search_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:commerce_flutter_storefront/features/product/data/mocks/product_detail_mock.dart';

class ProductDetailPage extends ConsumerWidget {
  const ProductDetailPage({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productAsync = ref.watch(productDetailProvider(id));

    if (productAsync.hasError) {
      return const Scaffold(
        body: Center(child: Text('Failed to load product')),
      );
    }

    final product = switch (productAsync) {
      AsyncData(:final value) => value,
      _ => ProductDetailMock.item(),
    };

    final selectedVariantId = ref.watch(
      selectedVariantIdProvider(product.initialVariantId),
    );

    return Scaffold(
      body: Column(
        children: [
          AppSearchHeader(
            initialValue: '',
            onSearch: (query) {
              context.push(AppRoutes.products, extra: SearchSource(query));
            },
          ),

          Expanded(
            child: Skeletonizer(
              enabled: productAsync.isLoading,
              child: ProductDetailContent(
                product: product,
                selectedVariantId: selectedVariantId,
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: ProductBottomBar(
        productId: product.id,
        variantId: selectedVariantId,
        productWarning: product.warning,
        productIsAvailable: product.isAvailable,
        productLoading: productAsync.isLoading,
      ),
    );
  }
}
