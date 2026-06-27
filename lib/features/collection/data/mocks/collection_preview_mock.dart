import '../../../product/data/mocks/product_summary_mock.dart';
import '../models/collection_preview.dart';

class CollectionPreviewMock {
  const CollectionPreviewMock._();

  static CollectionPreview item() {
    return CollectionPreview(
      id: 0,
      name: 'Summer Collection',
      slug: '',
      hasMoreProducts: true,
      products: ProductSummaryMock.items(6),
    );
  }

  static List<CollectionPreview> items([int count = 3]) {
    return List.generate(count, (_) => item());
  }
}
