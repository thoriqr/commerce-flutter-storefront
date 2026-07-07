import 'package:commerce_flutter_storefront/features/shipping/presentation/widgets/shipping_selector_bottom_sheet.dart';
import 'package:flutter/material.dart';

class ShippingSelector<T> extends StatelessWidget {
  const ShippingSelector({
    super.key,
    required this.label,
    required this.items,
    required this.itemLabel,
    required this.onSelected,
    this.selected,
    this.enabled = true,
    this.loading = false,
    this.placeholder,
    this.emptyMessage,
  });

  final String label;

  final List<T> items;

  final T? selected;

  final bool enabled;

  final bool loading;

  final String? placeholder;

  final String? emptyMessage;

  final String Function(T) itemLabel;

  final ValueChanged<T> onSelected;

  @override
  Widget build(BuildContext context) {
    final canOpen = enabled && !loading && items.isNotEmpty;

    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: !canOpen
          ? null
          : () async {
              final result = await showModalBottomSheet<T>(
                context: context,
                isScrollControlled: true,
                builder: (_) {
                  return ShippingSelectorBottomSheet<T>(
                    title: label,
                    items: items,
                    selected: selected,
                    itemLabel: itemLabel,
                  );
                },
              );

              if (result != null) {
                onSelected(result);
              }
            },
      child: InputDecorator(
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
          enabled: enabled,
          suffixIcon: loading
              ? const Padding(
                  padding: EdgeInsets.all(12),
                  child: SizedBox(
                    width: 18,
                    height: 18,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
                )
              : const Icon(Icons.keyboard_arrow_down),
        ),
        child: Text(
          switch ((loading, selected)) {
            (true, _) => 'Loading...',

            (_, final value?) => itemLabel(value),

            _ => placeholder ?? 'Select $label',
          },
          style: selected == null
              ? Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Theme.of(context).hintColor,
                )
              : null,
        ),
      ),
    );
  }
}
