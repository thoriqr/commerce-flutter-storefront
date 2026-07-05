import 'package:commerce_flutter_storefront/features/shared/constants/navigation_items.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/navigation_tile.dart';
import 'package:flutter/material.dart';

class NavigationList extends StatelessWidget {
  const NavigationList({super.key, required this.items});

  final List<NavigationItem> items;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: items.length,
      separatorBuilder: (_, _) => const Divider(height: 1),
      itemBuilder: (_, index) {
        return NavigationTile(item: items[index]);
      },
    );
  }
}
