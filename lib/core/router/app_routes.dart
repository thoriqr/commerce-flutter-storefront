abstract final class AppRoutes {
  static const home = '/';
  static const categories = '/categories';
  static const account = '/account';
  static const products = '/products';
  static const product = '/product/:id';

  static const cart = '/cart';

  static const profile = '/account/profile';
  static const addresses = '/account/addresses';
  static const orders = '/account/orders';
  static const security = '/account/security';

  static String productDetail(int id) {
    return '/product/$id';
  }
}
