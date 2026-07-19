import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_order_tile.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_orders_empty.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_orders_pagination.dart';
import 'package:commerce_flutter_storefront/features/order/data/models/order_listing_result.dart';
import 'package:flutter/material.dart';

class AccountOrdersContent extends StatelessWidget {
  const AccountOrdersContent({
    super.key,
    required this.result,
    required this.onRefresh,
    required this.onNextPage,
    required this.onPreviousPage,
  });

  final OrderListingResult result;
  final RefreshCallback onRefresh;
  final VoidCallback onNextPage;
  final VoidCallback onPreviousPage;

  @override
  Widget build(BuildContext context) {
    if (result.orders.isEmpty) {
      return AccountOrdersEmpty(onRefresh: onRefresh);
    }

    return RefreshIndicator(
      onRefresh: onRefresh,
      child: ListView.separated(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: result.orders.length + 1,
        separatorBuilder: (_, _) => const SizedBox(height: 12),
        itemBuilder: (_, index) {
          if (index == result.orders.length) {
            return AccountOrdersPagination(
              meta: result.meta,
              onNext: onNextPage,
              onPrevious: onPreviousPage,
            );
          }

          return AccountOrderTile(order: result.orders[index]);
        },
      ),
    );
  }
}
