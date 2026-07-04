import 'package:commerce_flutter_storefront/features/cart/data/models/cart.dart';

class CartMock {
  const CartMock._();

  static Cart item() {
    return Cart(
      items: [
        CartItem(
          variantId: 1,
          productId: 1,
          name: 'Classic Cotton T-Shirt',
          slug: 'classic-cotton-tshirt',
          price: 199000,
          stock: 20,
          quantity: 2,
          imageKey: 'skeleton',
          isAvailable: true,
          warning: null,
          options: const [
            CartItemOption(dimension: 'Color', value: 'Black'),
            CartItemOption(dimension: 'Size', value: 'L'),
          ],
        ),

        CartItem(
          variantId: 2,
          productId: 2,
          name: 'Leather Crossbody Bag',
          slug: 'leather-crossbody-bag',
          price: 899000,
          stock: 2,
          quantity: 1,
          imageKey: 'skeleton',
          isAvailable: true,
          warning: CartItemWarning.lowStock,
          options: const [CartItemOption(dimension: 'Color', value: 'Brown')],
        ),

        CartItem(
          variantId: 3,
          productId: 3,
          name: 'Running Sneakers',
          slug: 'running-sneakers',
          price: 1299000,
          stock: 1,
          quantity: 3,
          imageKey: 'skeleton',
          isAvailable: true,
          warning: CartItemWarning.insufficientStock,
          options: const [
            CartItemOption(dimension: 'Color', value: 'White'),
            CartItemOption(dimension: 'Size', value: '42'),
          ],
        ),
      ],
      summary: const CartSummary(totalItems: 6, subtotal: 2596000),
    );
  }

  static Cart empty() {
    return const Cart(
      items: [],
      summary: CartSummary(totalItems: 0, subtotal: 0),
    );
  }
}
