import 'package:commerce_flutter_storefront/features/catalog_filter/data/models/catalog_filter_group.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../catalog_filter/presentation/widgets/catalog_filter_section.dart';
import '../../domain/product_source.dart';
import '../notifiers/product_listing_notifier.dart';

class ProductFilterDrawer extends ConsumerStatefulWidget {
  const ProductFilterDrawer({
    super.key,
    required this.source,
    required this.catalogFilters,
  });

  final ProductSource source;
  final List<CatalogFilterGroup> catalogFilters;

  @override
  ConsumerState<ProductFilterDrawer> createState() =>
      _ProductFilterDrawerState();
}

class _ProductFilterDrawerState extends ConsumerState<ProductFilterDrawer> {
  late final TextEditingController _minPriceController;
  late final TextEditingController _maxPriceController;

  final Map<String, List<String>> _selectedFilters = {};

  @override
  void initState() {
    super.initState();

    final listing = ref.read(productListingProvider(widget.source));

    final params = listing.value?.params;

    _minPriceController = TextEditingController(
      text: params?.priceMin?.toString() ?? '',
    );

    _maxPriceController = TextEditingController(
      text: params?.priceMax?.toString() ?? '',
    );

    _selectedFilters.addAll(params?.filters ?? {});
  }

  @override
  void dispose() {
    _minPriceController.dispose();
    _maxPriceController.dispose();

    super.dispose();
  }

  Future<void> _apply() async {
    final notifier = ref.read(productListingProvider(widget.source).notifier);

    final minPrice = int.tryParse(_minPriceController.text);

    final maxPrice = int.tryParse(_maxPriceController.text);

    if (mounted) {
      Navigator.pop(context);
    }

    notifier.applyAllFilters(
      priceMin: minPrice,
      priceMax: maxPrice,
      filters: _selectedFilters,
    );
  }

  void _clearAll() {
    _minPriceController.clear();
    _maxPriceController.clear();

    setState(() {
      _selectedFilters.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    final showCatalogFilters = widget.source is! CollectionSource;

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          left: 16,
          right: 16,
          top: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom + 16,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Text(
                    'Filters',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),

                  const Spacer(),

                  TextButton(
                    onPressed: _clearAll,
                    child: const Text('Clear All'),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              Text(
                'Price Range',
                style: Theme.of(context).textTheme.titleMedium,
              ),

              const SizedBox(height: 12),

              TextField(
                controller: _minPriceController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Min Price'),
              ),

              const SizedBox(height: 12),

              TextField(
                controller: _maxPriceController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Max Price'),
              ),

              if (showCatalogFilters && widget.catalogFilters.isNotEmpty) ...[
                const SizedBox(height: 24),

                CatalogFilterSection(
                  filters: widget.catalogFilters,
                  selectedFilters: _selectedFilters,
                  onSelected: (name, value) {
                    setState(() {
                      final values = List<String>.from(
                        _selectedFilters[name] ?? [],
                      );

                      if (values.contains(value)) {
                        values.remove(value);
                      } else {
                        values.add(value);
                      }

                      if (values.isEmpty) {
                        _selectedFilters.remove(name);
                      } else {
                        _selectedFilters[name] = values;
                      }
                    });
                  },
                ),
              ],

              const SizedBox(height: 24),

              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: _apply,
                  child: const Text('Apply Filters'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
