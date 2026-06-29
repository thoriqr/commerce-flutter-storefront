import 'package:commerce_flutter_storefront/features/product/data/models/product_detail.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/providers/selected_variant_id_provider.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/attribute_chip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ProductVariantSelector extends ConsumerWidget {
  const ProductVariantSelector({
    super.key,
    required this.product,
    required this.selectedVariant,
  });

  final ProductDetail product;
  final ProductVariantOption selectedVariant;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (product.dimensions.isEmpty) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
      child: Column(
        children: product.dimensions.map((dimension) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: _Dimension(
              product: product,
              dimension: dimension,
              selectedVariant: selectedVariant,
            ),
          );
        }).toList(),
      ),
    );
  }
}

class _Dimension extends ConsumerWidget {
  const _Dimension({
    required this.product,
    required this.dimension,
    required this.selectedVariant,
  });

  final ProductDetail product;
  final ProductDimension dimension;
  final ProductVariantOption selectedVariant;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedValue = selectedVariant.options
        .firstWhere((option) => option.dimensionKey == dimension.key)
        .valueKey;

    final loading = Skeletonizer.of(context).enabled;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          dimension.label,
          style: Theme.of(
            context,
          ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600),
        ),

        const SizedBox(height: 8),

        SizedBox(
          height: 40,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: dimension.values.length,
            separatorBuilder: (_, _) => const SizedBox(width: 8),
            itemBuilder: (context, index) {
              final value = dimension.values[index];

              return AttributeChip(
                selected: selectedValue == value.key,
                hexColor: value.hexColor,
                loading: loading,
                onPressed: () {
                  _selectVariant(
                    ref,
                    product,
                    selectedVariant,
                    dimension.key,
                    value.key,
                  );
                },
                label: value.label,
              );
            },
          ),
        ),
      ],
    );
  }
}

void _selectVariant(
  WidgetRef ref,
  ProductDetail product,
  ProductVariantOption currentVariant,
  String dimensionKey,
  String valueKey,
) {
  final nextOptions = currentVariant.options.map((option) {
    if (option.dimensionKey == dimensionKey) {
      return option.copyWith(valueKey: valueKey);
    }

    return option;
  }).toList();

  final nextVariant = product.variants.firstWhere(
    (variant) => _matchesVariant(variant.options, nextOptions),
  );

  ref
      .read(selectedVariantIdProvider(product.initialVariantId).notifier)
      .select(nextVariant.id);
}

bool _matchesVariant(List<VariantOption> a, List<VariantOption> b) {
  if (a.length != b.length) {
    return false;
  }

  for (final option in a) {
    final match = b.firstWhere(
      (item) => item.dimensionKey == option.dimensionKey,
    );

    if (match.valueKey != option.valueKey) {
      return false;
    }
  }

  return true;
}
