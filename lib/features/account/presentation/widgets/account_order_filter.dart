import 'package:commerce_flutter_storefront/features/order/data/models/order_sort_status.dart';
import 'package:flutter/material.dart';

class AccountOrderFilter extends StatelessWidget {
  const AccountOrderFilter({
    super.key,
    required this.value,
    required this.onChanged,
  });

  final OrderSortStatus value;
  final ValueChanged<OrderSortStatus> onChanged;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<OrderSortStatus>(
      showSelectedIcon: false,
      segments: const [
        ButtonSegment(value: OrderSortStatus.ongoing, label: Text('Ongoing')),

        ButtonSegment(
          value: OrderSortStatus.completed,
          label: Text('Completed'),
        ),

        ButtonSegment(
          value: OrderSortStatus.cancelled,
          label: Text('Cancelled'),
        ),
      ],
      selected: {value},
      onSelectionChanged: (selection) {
        onChanged(selection.first);
      },
    );
  }
}
