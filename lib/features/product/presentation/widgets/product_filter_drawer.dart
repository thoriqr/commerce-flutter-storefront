import 'package:commerce_flutter_storefront/core/utils/currency_utils.dart';
import 'package:commerce_flutter_storefront/features/catalog_filter/data/models/catalog_filter_group.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../catalog_filter/presentation/widgets/catalog_filter_section.dart';
import '../../domain/product_source.dart';
import '../notifiers/product_listing_notifier.dart';
import 'package:flutter/services.dart';

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
  String? _errorMessage;
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

    _minPriceController.addListener(_clearError);
    _maxPriceController.addListener(_clearError);
  }

  @override
  void dispose() {
    _minPriceController.removeListener(_clearError);
    _maxPriceController.removeListener(_clearError);

    _minPriceController.dispose();
    _maxPriceController.dispose();

    super.dispose();
  }

  void _clearError() {
    if (_errorMessage == null) return;

    setState(() {
      _errorMessage = null;
    });
  }

  Future<void> _apply() async {
    const maxPriceLimit = 1000000000;

    final notifier = ref.read(productListingProvider(widget.source).notifier);

    final minPrice = int.tryParse(_minPriceController.text);
    final maxPrice = int.tryParse(_maxPriceController.text);

    String? error;

    if (minPrice != null && minPrice < 0) {
      error = 'Minimum price cannot be less than 0';
    } else if (minPrice != null && minPrice > maxPriceLimit) {
      error =
          'Minimum price cannot exceed ${CurrencyUtils.formatRupiah(maxPriceLimit)}';
    } else if (maxPrice != null && maxPrice < 0) {
      error = 'Maximum price cannot be less than 0';
    } else if (maxPrice != null && maxPrice > maxPriceLimit) {
      error =
          'Maximum price cannot exceed ${CurrencyUtils.formatRupiah(maxPriceLimit)}';
    } else if (minPrice != null && maxPrice != null && minPrice > maxPrice) {
      error = 'Minimum price must be less than or equal to maximum price';
    }

    if (error != null) {
      setState(() {
        _errorMessage = error;
      });

      return;
    }

    setState(() {
      _errorMessage = null;
    });

    if (mounted) {
      Navigator.pop(context);
    }

    await notifier.applyAllFilters(
      priceMin: minPrice,
      priceMax: maxPrice,
      filters: _selectedFilters,
    );
  }

  Future<void> _clearAll() async {
    _minPriceController.clear();
    _maxPriceController.clear();

    setState(() {
      _selectedFilters.clear();
    });

    if (mounted) {
      Navigator.pop(context);
    }

    await ref
        .read(productListingProvider(widget.source).notifier)
        .clearAllFilters();
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
                    style: TextButton.styleFrom(
                      foregroundColor: Theme.of(context).colorScheme.onSurface,
                    ),
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
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: const InputDecoration(
                  labelText: 'Min Price',
                  prefixText: 'Rp ',
                ),
              ),

              const SizedBox(height: 12),

              TextField(
                controller: _maxPriceController,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: const InputDecoration(
                  labelText: 'Max Price',
                  prefixText: 'Rp ',
                ),
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

              const SizedBox(height: 12),

              if (_errorMessage != null) ...[
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.errorContainer,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    _errorMessage!,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onErrorContainer,
                    ),
                  ),
                ),

                const SizedBox(height: 4),
              ],

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
