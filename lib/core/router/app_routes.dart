abstract final class AppRoutes {
  static const home = '/';
  static const categories = '/categories';
  static const account = '/account';

  static const products = '/products';
  static const product = '/product/:slug';

  static String productDetail(String slug) {
    return '/product/$slug';
  }
}
