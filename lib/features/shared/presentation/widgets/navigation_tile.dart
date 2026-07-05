import 'package:commerce_flutter_storefront/features/shared/constants/navigation_items.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavigationTile extends StatelessWidget {
  const NavigationTile({super.key, required this.item});

  final NavigationItem item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(item.icon),
      title: Text(item.title),
      trailing: const Icon(Icons.chevron_right),
      onTap: () {
        final router = GoRouter.of(context);
        final currentRoute = router.state.uri.path;

        Navigator.of(context).pop();

        if (currentRoute == item.route) {
          return;
        }

        switch (item.action) {
          case NavigationAction.go:
            router.go(item.route);

          case NavigationAction.push:
            router.push(item.route);
        }
      },
    );
  }
}
