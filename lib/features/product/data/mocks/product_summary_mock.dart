import '../models/product_summary.dart';

class ProductSummaryMock {
  const ProductSummaryMock._();

  static ProductSummary item() {
    return const ProductSummary(
      id: 1,
      name: 'Premium Cotton T-Shirt',
      slug: 'premium-cotton-t-shirt',
      imageKey: 'skeleton',
      displayPrice: 120000,
    );
  }

  static List<ProductSummary> items([int count = 8]) {
    return List.generate(count, (_) => item());
  }
}
