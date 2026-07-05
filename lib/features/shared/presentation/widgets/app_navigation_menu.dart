import 'package:commerce_flutter_storefront/features/auth/presentation/providers/auth_provider.dart';
import 'package:commerce_flutter_storefront/features/shared/constants/navigation_items.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/navigation_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppNavigationMenu extends ConsumerWidget {
  const AppNavigationMenu({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(isAuthenticatedProvider);

    final items = switch (auth) {
      AsyncData(:final value) => [
        ...commonNavigationItems,
        if (value) ...authenticatedNavigationItems,
      ],
      _ => commonNavigationItems,
    };

    return Material(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.arrow_back),
                  ),

                  const SizedBox(width: 8),

                  Expanded(
                    child: Text(
                      'Navigation',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ],
              ),
            ),

            const Divider(height: 1),

            Expanded(child: NavigationList(items: items)),
          ],
        ),
      ),
    );
  }
}
