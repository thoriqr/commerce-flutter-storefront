import '../models/product_detail.dart';

class ProductDetailMock {
  const ProductDetailMock._();

  static ProductDetail item() {
    return ProductDetail(
      id: 1,
      name: 'Premium Cotton T-Shirt',
      slug: 'premium-cotton-t-shirt',
      description:
          'Premium cotton t-shirt made from soft breathable cotton for everyday comfort.',
      isAvailable: true,
      warning: null,
      isVariant: true,
      initialVariantId: 101,

      category: const ProductCategory(
        name: 'T-Shirts',
        slugPath: 'men/t-shirts',
      ),

      dimensions: const [
        ProductDimension(
          key: 'color',
          label: 'Color',
          values: [
            ProductDimensionValue(
              key: 'black',
              label: 'Black',
              hexColor: '#000000',
            ),
            ProductDimensionValue(
              key: 'white',
              label: 'White',
              hexColor: '#FFFFFF',
            ),
          ],
        ),

        ProductDimension(
          key: 'size',
          label: 'Size',
          values: [
            ProductDimensionValue(key: 'm', label: 'M', hexColor: null),
            ProductDimensionValue(key: 'l', label: 'L', hexColor: null),
          ],
        ),
      ],

      variants: const [
        ProductVariantOption(
          id: 101,
          options: [
            VariantOption(dimensionKey: 'color', valueKey: 'black'),
            VariantOption(dimensionKey: 'size', valueKey: 'm'),
          ],
        ),

        ProductVariantOption(
          id: 102,
          options: [
            VariantOption(dimensionKey: 'color', valueKey: 'black'),
            VariantOption(dimensionKey: 'size', valueKey: 'l'),
          ],
        ),

        ProductVariantOption(
          id: 103,
          options: [
            VariantOption(dimensionKey: 'color', valueKey: 'white'),
            VariantOption(dimensionKey: 'size', valueKey: 'm'),
          ],
        ),

        ProductVariantOption(
          id: 104,
          options: [
            VariantOption(dimensionKey: 'color', valueKey: 'white'),
            VariantOption(dimensionKey: 'size', valueKey: 'l'),
          ],
        ),
      ],

      images: const [
        ProductImage(id: 1, imageKey: '', type: ProductImageType.product),
        ProductImage(id: 2, imageKey: '', type: ProductImageType.product),
        ProductImage(id: 3, imageKey: '', type: ProductImageType.product),
        ProductImage(
          id: 4,
          imageKey: '',
          type: ProductImageType.variant,
          signature: ProductImageSignature(
            dimensionKey: 'color',
            valueKey: 'black',
          ),
        ),
        ProductImage(
          id: 5,
          imageKey: '',
          type: ProductImageType.variant,
          signature: ProductImageSignature(
            dimensionKey: 'color',
            valueKey: 'white',
          ),
        ),
      ],
    );
  }
}
