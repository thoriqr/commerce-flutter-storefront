import 'package:commerce_flutter_storefront/core/router/app_routes.dart';
import 'package:commerce_flutter_storefront/features/product/domain/product_source.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/providers/product_provider.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/providers/selected_variant_id_provider.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/widgets/product_bottom_bar.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/widgets/product_detail_content.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/widgets/product_detail_error_page.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/app_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:commerce_flutter_storefront/features/product/data/mocks/product_detail_mock.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    return _ProductDetailContent(id: id);
  }
}

class _ProductDetailContent extends ConsumerWidget {
  const _ProductDetailContent({required this.id});

  final int id;

  Future<void> _refresh(WidgetRef ref) async {
    final product = await ref.read(productDetailProvider(id).future);

    final selectedVariantId = ref.read(
      selectedVariantIdProvider(product.initialVariantId),
    );

    ref.invalidate(productDetailProvider(id));
    ref.invalidate(productVariantDetailProvider(id, selectedVariantId));

    await Future.wait([
      ref.read(productDetailProvider(id).future),
      ref.read(productVariantDetailProvider(id, selectedVariantId).future),
    ]);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productAsync = ref.watch(productDetailProvider(id));

    if (productAsync.hasError) {
      return ProductDetailErrorPage(
        error: productAsync.error!,
        onRetry: () => _refresh(ref),
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
          AppHeader(
            initialValue: '',
            onSearch: (query) {
              context.push(AppRoutes.products, extra: SearchSource(query));
            },
          ),

          Expanded(
            child: RefreshIndicator(
              onRefresh: () => _refresh(ref),
              child: Skeletonizer(
                enabled: productAsync.isLoading,
                child: ProductDetailContent(
                  product: product,
                  selectedVariantId: selectedVariantId,
                ),
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
