import 'package:commerce_flutter_storefront/features/order/data/models/order_detail.dart';
import 'package:commerce_flutter_storefront/features/order/presentation/widgets/order_address_card.dart';
import 'package:commerce_flutter_storefront/features/order/presentation/widgets/order_item_tile.dart';
import 'package:commerce_flutter_storefront/features/order/presentation/widgets/order_shipping_card.dart';
import 'package:commerce_flutter_storefront/features/order/presentation/widgets/order_status_card.dart';
import 'package:commerce_flutter_storefront/features/order/presentation/widgets/order_summary_card.dart';
import 'package:commerce_flutter_storefront/features/order/presentation/widgets/order_timeline_card.dart';
import 'package:commerce_flutter_storefront/features/order/presentation/widgets/order_warehouse_card.dart';
import 'package:flutter/material.dart';

class OrderDetailContent extends StatelessWidget {
  const OrderDetailContent({
    super.key,
    required this.order,
    required this.onRefresh,
  });

  final OrderDetail order;
  final RefreshCallback onRefresh;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Order Code',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),

                  const SizedBox(height: 4),

                  SelectableText(
                    order.orderCode,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 16),
          OrderStatusCard(order: order),

          const SizedBox(height: 16),

          OrderTimelineCard(timeline: order.timeline),

          const SizedBox(height: 16),

          OrderAddressCard(address: order.address),

          const SizedBox(height: 16),

          OrderWarehouseCard(warehouse: order.warehouseOrigin),

          const SizedBox(height: 16),

          OrderShippingCard(shipping: order.shipping),

          const SizedBox(height: 16),

          for (final item in order.items) ...[
            OrderItemTile(item: item),
            const SizedBox(height: 12),
          ],

          const SizedBox(height: 16),

          OrderSummaryCard(order: order),

          const SizedBox(height: 100),
        ],
      ),
    );
  }
}
