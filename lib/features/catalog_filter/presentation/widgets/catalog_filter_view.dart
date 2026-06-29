import 'package:commerce_flutter_storefront/features/catalog_filter/data/models/catalog_filter_group.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/attribute_chip.dart';
import 'package:flutter/material.dart';

class CatalogFilterView extends StatelessWidget {
  const CatalogFilterView({
    super.key,
    required this.filters,
    required this.selectedFilters,
    required this.onSelected,
  });

  final List<CatalogFilterGroup> filters;
  final Map<String, List<String>> selectedFilters;
  final void Function(String name, String value) onSelected;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (final group in filters) ...[
          Text(group.label, style: theme.textTheme.titleMedium),

          const SizedBox(height: 12),

          SizedBox(
            height: 40,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: group.values.length,
              separatorBuilder: (_, _) => const SizedBox(width: 8),
              itemBuilder: (context, index) {
                final item = group.values[index];

                final isSelected =
                    selectedFilters[group.name]?.contains(item.value) ?? false;

                return AttributeChip(
                  label: item.label,
                  count: item.count,
                  hexColor: item.hexColor,
                  selected: isSelected,
                  onPressed: () {
                    onSelected(group.name, item.value);
                  },
                );
              },
            ),
          ),

          const SizedBox(height: 24),
        ],
      ],
    );
  }
}
