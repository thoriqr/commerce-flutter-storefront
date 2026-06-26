import 'package:commerce_flutter_storefront/features/product/data/models/product_detail.dart';
import 'package:flutter/material.dart';

class ProductVariantSelectorSection extends StatelessWidget {
  const ProductVariantSelectorSection({super.key, required this.dimensions});

  final List<ProductDimension> dimensions;

  @override
  Widget build(BuildContext context) {
    if (dimensions.isEmpty) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: Column(
        children: dimensions.map((dimension) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: _DimensionSection(dimension: dimension),
          );
        }).toList(),
      ),
    );
  }
}

class _DimensionSection extends StatelessWidget {
  const _DimensionSection({required this.dimension});

  final ProductDimension dimension;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          dimension.label,
          style: Theme.of(
            context,
          ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600),
        ),

        const SizedBox(height: 12),

        SizedBox(
          height: 40,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: dimension.values.length,
            separatorBuilder: (_, _) => const SizedBox(width: 8),
            itemBuilder: (context, index) {
              final value = dimension.values[index];

              return FilterChip(
                selected: false,
                onSelected: (_) {},
                label: Text(value.label),
              );
            },
          ),
        ),
      ],
    );
  }
}
