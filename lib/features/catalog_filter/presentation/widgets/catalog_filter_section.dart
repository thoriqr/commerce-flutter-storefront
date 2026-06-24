import 'package:commerce_flutter_storefront/features/catalog_filter/data/models/catalog_filter_group.dart';
import 'package:flutter/material.dart';

class CatalogFilterSection extends StatelessWidget {
  const CatalogFilterSection({
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (final group in filters) ...[
          Text(group.label, style: Theme.of(context).textTheme.titleMedium),

          const SizedBox(height: 12),

          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              for (final item in group.values)
                FilterChip(
                  showCheckmark: false,
                  avatar: item.hexColor != null
                      ? CircleAvatar(
                          radius: 8,
                          backgroundColor: Color(
                            int.parse(item.hexColor!.replaceFirst('#', '0xFF')),
                          ),
                        )
                      : null,
                  label: Text('${item.label} (${item.count})'),
                  selected:
                      selectedFilters[group.name]?.contains(item.value) ??
                      false,
                  onSelected: (_) {
                    onSelected(group.name, item.value);
                  },
                ),
            ],
          ),

          const SizedBox(height: 24),
        ],
      ],
    );
  }
}
