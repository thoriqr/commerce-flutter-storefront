import 'package:commerce_flutter_storefront/core/router/app_routes.dart';
import 'package:commerce_flutter_storefront/core/router/auth_routes.dart';
import 'package:commerce_flutter_storefront/features/auth/constants/login_redirect.dart';
import 'package:commerce_flutter_storefront/features/auth/presentation/providers/auth_provider.dart';
import 'package:commerce_flutter_storefront/features/cart/presentation/mutations/cart_mutations.dart';
import 'package:commerce_flutter_storefront/features/product/constants/product_constants.dart';
import 'package:commerce_flutter_storefront/features/product/data/models/product_detail.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/providers/product_provider.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/widgets/product_variant_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:commerce_flutter_storefront/features/product/data/mocks/product_variant_detail_mock.dart';

class ProductBottomBar extends ConsumerStatefulWidget {
  const ProductBottomBar({
    super.key,
    required this.productId,
    required this.variantId,
    required this.productIsAvailable,
    required this.productWarning,
    required this.productLoading,
  });

  final int productId;
  final int variantId;

  final bool productIsAvailable;
  final ProductDetailWarning? productWarning;

  final bool productLoading;

  @override
  ConsumerState<ProductBottomBar> createState() => _ProductBottomBarState();
}

class _ProductBottomBarState extends ConsumerState<ProductBottomBar> {
  int _quantity = 1;

  @override
  void didUpdateWidget(covariant ProductBottomBar oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.variantId != widget.variantId) {
      setState(() {
        _quantity = 1;
      });
    }
  }

  void _increment(int stock) {
    if (_quantity >= stock) return;

    setState(() {
      _quantity++;
    });
  }

  void _decrement() {
    if (_quantity <= 1) return;

    setState(() {
      _quantity--;
    });
  }

  @override
  Widget build(BuildContext context) {
    final mutation = ref.watch(cartMutationsProvider);
    final auth = ref.watch(isAuthenticatedProvider);

    final isPending = widget.variantId == uninitializedVariantId;

    final isAuthenticated = switch (auth) {
      AsyncData(:final value) => value,
      _ => false,
    };

    final variantAsync = isPending
        ? null
        : ref.watch(
            productVariantDetailProvider(widget.productId, widget.variantId),
          );

    final variant = isPending
        ? ProductVariantDetailMock.item()
        : switch (variantAsync!) {
            AsyncData(:final value) => value,
            _ => ProductVariantDetailMock.item(),
          };

    final loading =
        isPending ||
        widget.productLoading ||
        (variantAsync?.isLoading ?? false) ||
        mutation.isLoading;

    final canAddToCart =
        !isPending && widget.productIsAvailable && variant.isAvailable;

    return SafeArea(
      top: false,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          border: Border(
            top: BorderSide(color: Theme.of(context).dividerColor),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductVariantInfo(
              productId: widget.productId,
              variantId: widget.variantId,
              productWarning: widget.productWarning,
            ),

            const SizedBox(height: 12),

            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).colorScheme.outline,
                    ),
                    borderRadius: BorderRadius.circular(999),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: loading || !canAddToCart ? null : _decrement,
                        icon: const Icon(Icons.remove),
                      ),

                      SizedBox(
                        width: 24,
                        child: Center(child: Text(_quantity.toString())),
                      ),

                      IconButton(
                        onPressed: loading || !canAddToCart
                            ? null
                            : () => _increment(variant.stock),
                        icon: const Icon(Icons.add),
                      ),
                    ],
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: FilledButton(
                    style: FilledButton.styleFrom(
                      minimumSize: const Size.fromHeight(52),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(999),
                      ),
                    ),
                    onPressed: loading || !canAddToCart
                        ? null
                        : () {
                            if (!isAuthenticated) {
                              AuthRoutes.pushLogin(
                                context,
                                redirect: LoginRedirect(
                                  AppRoutes.productDetail(widget.productId),
                                ),
                              );
                              return;
                            }

                            ref
                                .read(cartMutationsProvider.notifier)
                                .addItem(
                                  variantId: widget.variantId,
                                  quantity: _quantity,
                                );
                          },
                    child: mutation.isLoading
                        ? const SizedBox(
                            width: 18,
                            height: 18,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : const Text('Add to Cart'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
