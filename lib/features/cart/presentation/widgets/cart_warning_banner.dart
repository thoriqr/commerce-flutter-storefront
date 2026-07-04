import 'package:commerce_flutter_storefront/features/cart/data/models/cart.dart';
import 'package:flutter/material.dart';

class CartWarningBanner extends StatelessWidget {
  const CartWarningBanner({
    super.key,
    required this.warning,
    required this.stock,
  });

  final CartItemWarning warning;
  final int stock;

  @override
  Widget build(BuildContext context) {
    final message = switch (warning) {
      CartItemWarning.lowStock => 'Only a few items left.',

      CartItemWarning.insufficientStock =>
        'Only $stock item${stock == 1 ? '' : 's'} available.',

      CartItemWarning.outOfStock => 'Out of stock.',

      CartItemWarning.unavailable => 'This product is unavailable.',
    };

    return Text(
      message,
      style: TextStyle(color: Theme.of(context).colorScheme.error),
    );
  }
}
