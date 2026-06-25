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

                return FilterChip(
                  showCheckmark: false,

                  backgroundColor: const Color(0xFFF1EAF5),

                  selectedColor: const Color(0xFFDDD2E4),

                  surfaceTintColor: Colors.transparent,
                  shadowColor: Colors.transparent,

                  side: BorderSide(
                    color: isSelected
                        ? const Color(0xFFD4C2E1)
                        : Colors.transparent,
                  ),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(999),
                  ),

                  avatar: item.hexColor != null
                      ? CircleAvatar(
                          radius: 8,
                          backgroundColor: Color(
                            int.parse(item.hexColor!.replaceFirst('#', '0xFF')),
                          ),
                        )
                      : null,

                  label: Text(
                    '${item.label} (${item.count})',
                    style: theme.textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w500,
                      color: isSelected
                          ? theme.colorScheme.onSurface
                          : theme.colorScheme.onSurface,
                    ),
                  ),

                  selected: isSelected,

                  onSelected: (_) {
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
