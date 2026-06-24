import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'app_search_bar.dart';

class AppSearchHeader extends StatelessWidget {
  const AppSearchHeader({
    super.key,
    this.initialValue = '',
    required this.onSearch,
  });

  final String initialValue;
  final ValueChanged<String> onSearch;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
        child: Row(
          children: [
            IconButton(
              onPressed: context.pop,
              icon: const Icon(Icons.arrow_back),
            ),

            const SizedBox(width: 8),

            Expanded(
              child: AppSearchBar(
                initialValue: initialValue,
                onSearch: onSearch,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
