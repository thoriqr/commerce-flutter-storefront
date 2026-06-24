import 'package:flutter/material.dart';

class AppSearchBar extends StatefulWidget {
  const AppSearchBar({
    super.key,
    required this.onSearch,
    this.initialValue = '',
    this.autoFocus = false,
  });

  final String initialValue;
  final bool autoFocus;
  final ValueChanged<String> onSearch;

  @override
  State<AppSearchBar> createState() => _AppSearchBarState();
}

class _AppSearchBarState extends State<AppSearchBar> {
  late final SearchController _controller;

  // Search pages receive an initial query from the route
  // (e.g. SearchSource("jacket")).
  //
  // In this case the query is part of the screen state and
  // should remain visible after submitting.
  //
  // Home search does not provide an initial value, so the
  // text field acts like a temporary input and can be cleared
  // after navigation.
  bool get _shouldPreserveQuery => widget.initialValue.isNotEmpty;

  @override
  void initState() {
    super.initState();

    _controller = SearchController()..text = widget.initialValue;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _submit() {
    final query = _controller.text.trim();

    if (query.isEmpty) return;

    FocusScope.of(context).unfocus();

    widget.onSearch(query);

    // Home search should reset after navigation.
    // Search result pages keep the query because it is
    // restored from the route state.
    if (!_shouldPreserveQuery) {
      _controller.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      controller: _controller,
      hintText: 'Search products',
      autoFocus: widget.autoFocus,
      leading: const Icon(Icons.search),
      elevation: const WidgetStatePropertyAll(0),

      backgroundColor: WidgetStatePropertyAll(
        Theme.of(context).colorScheme.surfaceContainer,
      ),

      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),

      padding: const WidgetStatePropertyAll(
        EdgeInsets.symmetric(horizontal: 12),
      ),

      onSubmitted: (_) => _submit(),
    );
  }
}
