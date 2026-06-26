import 'package:commerce_flutter_storefront/core/utils/image_utils.dart';
import 'package:commerce_flutter_storefront/features/product/data/models/product_detail.dart';
import 'package:flutter/material.dart';

class ProductImageCarouselSection extends StatelessWidget {
  const ProductImageCarouselSection({super.key, required this.images});

  final List<ProductImage> images;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: SizedBox(
          height: 360,
          child: PageView.builder(
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Image.network(
                ImageUtils.buildUrl(images[index].imageKey),
                fit: BoxFit.cover,
              );
            },
          ),
        ),
      ),
    );
  }
}
