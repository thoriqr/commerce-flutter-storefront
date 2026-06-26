abstract final class AppRoutes {
  static const home = '/';
  static const categories = '/categories';
  static const account = '/account';

  static const products = '/products';
  static const product = '/product/:id';

  static String productDetail(int id) {
    return '/product/$id';
  }
}
