import 'package:commerce_flutter_storefront/core/utils/app_date_utils.dart';
import 'package:commerce_flutter_storefront/features/order/data/models/order_detail.dart';
import 'package:flutter/material.dart';

class OrderTimelineCard extends StatelessWidget {
  const OrderTimelineCard({super.key, required this.timeline});

  final List<OrderTimeline> timeline;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Timeline', style: theme.textTheme.titleMedium),

            const SizedBox(height: 16),

            for (final item in timeline) ...[
              Builder(
                builder: (_) {
                  final icon = switch ((item.isCompleted, item.isCurrent)) {
                    (true, _) => Icons.check_circle,
                    (_, true) => Icons.radio_button_checked,
                    _ => Icons.radio_button_unchecked,
                  };

                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(icon),

                      const SizedBox(width: 12),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.label,
                              style: theme.textTheme.titleSmall?.copyWith(
                                fontWeight: item.isCurrent
                                    ? FontWeight.w600
                                    : null,
                              ),
                            ),

                            if (item.date != null) ...[
                              const SizedBox(height: 4),

                              Text(
                                AppDateUtils.dateTime(item.date!),
                                style: theme.textTheme.bodySmall,
                              ),
                            ],
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),

              if (item != timeline.last)
                Padding(
                  padding: const EdgeInsets.only(left: 11, top: 4, bottom: 4),
                  child: Container(
                    width: 2,
                    height: 28,
                    color: theme.dividerColor,
                  ),
                ),
            ],
          ],
        ),
      ),
    );
  }
}
