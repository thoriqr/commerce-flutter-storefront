import 'package:commerce_flutter_storefront/core/utils/currency_utils.dart';
import 'package:commerce_flutter_storefront/features/order/data/models/order_detail.dart';
import 'package:flutter/material.dart';

class OrderDetailBottomBar extends StatelessWidget {
  const OrderDetailBottomBar({super.key, required this.order});

  final OrderDetail order;

  @override
  Widget build(BuildContext context) {
    if (!order.canPay) {
      return const SizedBox.shrink();
    }

    return SafeArea(
      top: false,
      child: Container(
        padding: const EdgeInsets.all(16),
        child: FilledButton(
          onPressed: () {
            // TODO:
            // fetch snap token
            // launch payment page
          },
          style: FilledButton.styleFrom(minimumSize: const Size.fromHeight(52)),
          child: Text('Pay ${CurrencyUtils.formatRupiah(order.total)}'),
        ),
      ),
    );
  }
}
