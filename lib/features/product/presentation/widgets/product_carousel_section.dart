import 'package:commerce_flutter_storefront/core/utils/image_utils.dart';
import 'package:commerce_flutter_storefront/features/product/data/models/product_detail.dart';
import 'package:flutter/material.dart';

class ProductImageCarouselSection extends StatefulWidget {
  const ProductImageCarouselSection({
    super.key,
    required this.product,
    required this.selectedVariantId,
  });

  final ProductDetail product;
  final int selectedVariantId;

  @override
  State<ProductImageCarouselSection> createState() =>
      _ProductImageCarouselSectionState();
}

class _ProductImageCarouselSectionState
    extends State<ProductImageCarouselSection> {
  late final PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void didUpdateWidget(covariant ProductImageCarouselSection oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.selectedVariantId != widget.selectedVariantId) {
      _jumpToVariantImage();
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _jumpToVariantImage() {
    final variant = widget.product.variants.firstWhere(
      (variant) => variant.id == widget.selectedVariantId,
    );

    final image = _findVariantImage(variant);

    if (image == null) {
      return;
    }

    final imageIndex = widget.product.images.indexWhere(
      (item) => item.id == image.id,
    );

    if (imageIndex == -1) {
      return;
    }

    _pageController.animateToPage(
      imageIndex,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  ProductImage? _findVariantImage(ProductVariantOption variant) {
    for (final option in variant.options) {
      for (final image in widget.product.images) {
        if (image.type != ProductImageType.variant) {
          continue;
        }

        final signature = image.signature;

        if (signature == null) {
          continue;
        }

        if (signature.dimensionKey == option.dimensionKey &&
            signature.valueKey == option.valueKey) {
          return image;
        }
      }
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: SizedBox(
          height: 360,
          child: Stack(
            children: [
              PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemCount: widget.product.images.length,
                itemBuilder: (context, index) {
                  return Image.network(
                    ImageUtils.buildUrl(widget.product.images[index].imageKey),
                    fit: BoxFit.cover,
                  );
                },
              ),

              if (widget.product.images.length > 1)
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 12,
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black.withValues(alpha: 0.35),
                        borderRadius: BorderRadius.circular(999),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: List.generate(widget.product.images.length, (
                          index,
                        ) {
                          final isActive = index == _currentPage;

                          return AnimatedContainer(
                            duration: const Duration(milliseconds: 200),
                            margin: const EdgeInsets.symmetric(horizontal: 3),
                            width: isActive ? 14 : 6,
                            height: 6,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(999),
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
