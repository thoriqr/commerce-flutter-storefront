import 'package:commerce_flutter_storefront/core/router/app_routes.dart';
import 'package:commerce_flutter_storefront/features/cart/presentation/providers/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'app_search_bar.dart';

class AppHeader extends ConsumerWidget implements PreferredSizeWidget {
  const AppHeader({
    super.key,
    required this.onSearch,
    this.initialValue = '',
    this.showBackButton = true,
  });

  final String initialValue;
  final bool showBackButton;
  final ValueChanged<String> onSearch;

  @override
  Size get preferredSize => const Size.fromHeight(72);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cart = ref.watch(cartProvider);

    final totalItems = switch (cart) {
      AsyncData(:final value) => value.summary.totalItems,
      _ => 0,
    };

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
                  onPressed: context.pop,
                  icon: const Icon(Icons.arrow_back),
                ),

                const SizedBox(width: 8),
              ],

              Expanded(
                child: AppSearchBar(
                  initialValue: initialValue,
                  onSearch: onSearch,
                ),
              ),

              const SizedBox(width: 8),

              Badge(
                isLabelVisible: totalItems > 0,
                label: Text(totalItems.toString()),
                child: IconButton(
                  onPressed: () => context.push(AppRoutes.cart),
                  icon: const Icon(Icons.shopping_cart_outlined),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
