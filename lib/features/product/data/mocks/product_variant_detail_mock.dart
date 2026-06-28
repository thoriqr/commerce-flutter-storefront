import '../models/product_variant_detail.dart';

class ProductVariantDetailMock {
  const ProductVariantDetailMock._();

  static ProductVariantDetail item() {
    return const ProductVariantDetail(
      variantId: 101,
      price: 249000,
      stock: 24,
      sku: 'TSHIRT-BLK-M',
      currency: 'IDR',
      weight: 300,
      weightUnit: 'g',
      isAvailable: true,
      warning: null,
    );
  }
}
