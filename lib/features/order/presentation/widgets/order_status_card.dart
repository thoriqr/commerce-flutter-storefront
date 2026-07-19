import 'dart:async';

import 'package:commerce_flutter_storefront/features/order/data/models/order_detail.dart';
import 'package:commerce_flutter_storefront/features/order/extensions/order_status_extension.dart';
import 'package:flutter/material.dart';

class OrderStatusCard extends StatelessWidget {
  const OrderStatusCard({super.key, required this.order});

  final OrderDetail order;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(order.status.label, style: theme.textTheme.titleLarge),

            const SizedBox(height: 8),

            switch (order.status) {
              OrderStatus.waitingPayment => _CountdownText(
                expiresAt: order.expiresAt,
              ),

              _ => Text(switch (order.status) {
                OrderStatus.processing =>
                  'Your order is currently being processed.',

                OrderStatus.shipped => 'Your order is on its way.',

                OrderStatus.delivered => 'Your order has been delivered.',

                OrderStatus.cancelled => 'This order has been cancelled.',

                OrderStatus.completed => 'This order has been completed.',

                OrderStatus.expired => 'Payment time has expired.',

                OrderStatus.failed => 'This order could not be completed.',

                OrderStatus.unknown => 'Unknown order status.',

                OrderStatus.waitingPayment => '',
              }),
            },
          ],
        ),
      ),
    );
  }
}

class _CountdownText extends StatefulWidget {
  const _CountdownText({required this.expiresAt});

  final String expiresAt;

  @override
  State<_CountdownText> createState() => _CountdownTextState();
}

class _CountdownTextState extends State<_CountdownText> {
  late Timer _timer;

  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final diff = DateTime.parse(
      widget.expiresAt,
    ).toLocal().difference(DateTime.now());

    if (diff.isNegative) {
      return const Text('Payment time has expired.');
    }

    final minutes = diff.inMinutes;
    final seconds = diff.inSeconds % 60;

    return Text(
      'Please complete your payment within '
      '$minutes:${seconds.toString().padLeft(2, '0')}.',
    );
  }
}
