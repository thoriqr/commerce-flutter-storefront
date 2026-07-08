import 'package:commerce_flutter_storefront/core/router/app_routes.dart';
import 'package:commerce_flutter_storefront/features/cart/presentation/providers/cart_provider.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/app_navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'app_search_bar.dart';

class AppHeader extends ConsumerWidget implements PreferredSizeWidget {
  const AppHeader({
    super.key,
    required this.onSearch,
    this.initialValue = '',
    this.title,
    this.showBackButton = true,
    this.showCartButton = true,
    this.showMenuButton = false,
  });

  final String? title;
  final String initialValue;

  final bool showBackButton;
  final bool showCartButton;
  final bool showMenuButton;

  final ValueChanged<String> onSearch;

  @override
  Size get preferredSize => const Size.fromHeight(72);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final totalItems = ref.watch(
      cartProvider.select((cart) {
        return switch (cart) {
          AsyncData(:final value) => value.summary.totalItems,
          _ => 0,
        };
      }),
    );

    void handleBack(BuildContext context) {
      if (context.canPop()) {
        context.pop();
      } else {
        context.go(AppRoutes.home);
      }
    }

    return Material(
      color: Theme.of(context).scaffoldBackgroundColor,
      elevation: 1,
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
          child: Row(
            children: [
              if (showBackButton) ...[
                IconButton(
                  onPressed: () => handleBack(context),
                  icon: const Icon(Icons.arrow_back),
                ),
                const SizedBox(width: 8),
              ],

              Expanded(
                child: title != null
                    ? Text(
                        title!,
                        style: Theme.of(context).textTheme.titleLarge,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      )
                    : AppSearchBar(
                        initialValue: initialValue,
                        onSearch: onSearch,
                      ),
              ),

              if (showCartButton || showMenuButton) const SizedBox(width: 8),

              if (showCartButton)
                Badge(
                  isLabelVisible: totalItems > 0,
                  label: Text(totalItems.toString()),
                  child: IconButton(
                    onPressed: () => context.push(AppRoutes.cart),
                    icon: const Icon(Icons.shopping_cart_outlined),
                  ),
                ),

              if (showMenuButton)
                IconButton(
                  onPressed: () {
                    showGeneralDialog(
                      context: context,
                      barrierDismissible: true,
                      barrierLabel: 'Navigation',
                      transitionDuration: const Duration(milliseconds: 180),
                      pageBuilder: (_, _, _) {
                        return Material(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          child: const AppNavigationMenu(),
                        );
                      },
                      transitionBuilder:
                          (context, animation, secondaryAnimation, child) {
                            final offset =
                                Tween<Offset>(
                                  begin: const Offset(1, 0),
                                  end: Offset.zero,
                                ).animate(
                                  CurvedAnimation(
                                    parent: animation,
                                    curve: Curves.easeOutCubic,
                                  ),
                                );

                            return SlideTransition(
                              position: offset,
                              child: child,
                            );
                          },
                    );
                  },
                  icon: const Icon(Icons.menu),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
