import 'package:commerce_flutter_storefront/core/models/pagination_meta.dart';
import 'package:flutter/material.dart';

class AccountOrdersPagination extends StatelessWidget {
  const AccountOrdersPagination({
    super.key,
    required this.meta,
    required this.onPrevious,
    required this.onNext,
  });

  final PaginationMeta meta;
  final VoidCallback onPrevious;
  final VoidCallback onNext;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Row(
        children: [
          Expanded(
            child: OutlinedButton.icon(
              onPressed: meta.hasPrev ? onPrevious : null,
              icon: const Icon(Icons.chevron_left),
              label: const Text('Previous'),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              '${meta.page} / ${meta.totalPages}',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),

          Expanded(
            child: FilledButton.icon(
              onPressed: meta.hasNext ? onNext : null,
              icon: const Icon(Icons.chevron_right),
              label: const Text('Next'),
            ),
          ),
        ],
      ),
    );
  }
}
