import 'dart:async';

import 'package:flutter/material.dart';

class ShippingSelectorBottomSheet<T> extends StatefulWidget {
  const ShippingSelectorBottomSheet({
    super.key,
    required this.title,
    required this.items,
    required this.itemLabel,
    this.selected,
    this.emptyMessage,
  });

  final String title;
  final List<T> items;
  final T? selected;
  final String Function(T) itemLabel;
  final String? emptyMessage;

  @override
  State<ShippingSelectorBottomSheet<T>> createState() =>
      _ShippingSelectorBottomSheetState<T>();
}

class _ShippingSelectorBottomSheetState<T>
    extends State<ShippingSelectorBottomSheet<T>> {
  final _searchController = TextEditingController();

  Timer? _debounce;

  late List<T> _filtered;

  @override
  void initState() {
    super.initState();

    _filtered = widget.items;

    _searchController.addListener(_onSearch);
  }

  void _onSearch() {
    _debounce?.cancel();

    _debounce = Timer(const Duration(milliseconds: 250), () {
      if (!mounted) {
        return;
      }

      final keyword = _searchController.text.trim().toLowerCase();

      setState(() {
        if (keyword.isEmpty) {
          _filtered = widget.items;
        } else {
          _filtered = widget.items.where((item) {
            return widget.itemLabel(item).toLowerCase().contains(keyword);
          }).toList();
        }
      });
    });
  }

  @override
  void dispose() {
    _debounce?.cancel();

    _searchController
      ..removeListener(_onSearch)
      ..dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * .75,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                widget.title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                controller: _searchController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search...',
                ),
              ),
            ),

            const SizedBox(height: 12),

            Expanded(
              child: _filtered.isEmpty
                  ? Center(
                      child: Text(widget.emptyMessage ?? 'No results found.'),
                    )
                  : ListView.separated(
                      itemCount: _filtered.length,
                      separatorBuilder: (_, _) => const Divider(height: 1),
                      itemBuilder: (_, index) {
                        final item = _filtered[index];

                        return ListTile(
                          title: Text(widget.itemLabel(item)),
                          trailing: item == widget.selected
                              ? const Icon(Icons.check)
                              : null,
                          onTap: () {
                            Navigator.pop(context, item);
                          },
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
