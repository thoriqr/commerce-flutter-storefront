abstract final class AppRoutes {
  static const home = "/";
  static const categories = "/categories";
  static const account = "/account";
  static const products = "/products";
  static const product = "/product/:id";

  static const cart = "/cart";
  static const checkout = "/checkout/:sessionId";
  static const order = "/order/:orderCode";

  static String productDetail(int id) {
    return "/product/$id";
  }

  static String checkoutSession(int sessionId) {
    return "/checkout/$sessionId";
  }

  static String orderDetail(String orderCode) {
    return "/order/$orderCode";
  }
}
