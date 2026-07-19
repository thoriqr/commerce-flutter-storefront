import 'package:commerce_flutter_storefront/core/router/app_routes.dart';
import 'package:commerce_flutter_storefront/core/utils/app_date_utils.dart';
import 'package:commerce_flutter_storefront/core/utils/currency_utils.dart';
import 'package:commerce_flutter_storefront/core/utils/image_utils.dart';
import 'package:commerce_flutter_storefront/features/order/data/models/order.dart';
import 'package:commerce_flutter_storefront/features/order/extensions/order_status_extension.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:skeletonizer/skeletonizer.dart';

class AccountOrderTile extends StatelessWidget {
  const AccountOrderTile({super.key, required this.order});

  final Order order;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          context.push(AppRoutes.orderDetail(order.orderCode));
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child:
                          order.previewItem.imageKey == null ||
                              order.previewItem.imageKey == 'skeleton'
                          ? DecoratedBox(
                              decoration: BoxDecoration(
                                color:
                                    theme.colorScheme.surfaceContainerHighest,
                              ),
                            )
                          : Skeleton.replace(
                              child: Image.network(
                                ImageUtils.buildUrl(
                                  order.previewItem.imageKey!,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                    ),
                  ),

                  const SizedBox(width: 16),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          order.previewItem.name,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.titleSmall,
                        ),

                        if (order.itemCount > 1) ...[
                          const SizedBox(height: 4),

                          Text(
                            '+${order.itemCount - 1} more item',
                            style: theme.textTheme.bodySmall,
                          ),
                        ],

                        const SizedBox(height: 8),

                        Text(
                          order.status.label,
                          style: theme.textTheme.bodyMedium,
                        ),

                        const SizedBox(height: 4),

                        Text(
                          AppDateUtils.dateTime(order.createdAt),
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              Row(
                children: [
                  Text(
                    CurrencyUtils.formatRupiah(order.total),
                    style: theme.textTheme.titleMedium,
                  ),

                  const Spacer(),

                  if (order.canConfirm)
                    FilledButton.tonal(
                      onPressed: () {
                        // TODO:
                        // confirm delivered
                      },
                      child: const Text('Confirm Delivered'),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
