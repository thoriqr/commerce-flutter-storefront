import '../models/collection_detail.dart';

class CollectionDetailMock {
  const CollectionDetailMock._();

  static CollectionDetail item() {
    return const CollectionDetail(
      id: 0,
      name: 'Summer Collection',
      slug: '',
      description:
          'Discover our latest collection featuring premium essentials.',
    );
  }
}
