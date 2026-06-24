import 'package:commerce_flutter_storefront/core/router/app_routes.dart';
import 'package:commerce_flutter_storefront/features/product/domain/product_source.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../shared/presentation/widgets/app_search_bar.dart';

class AppTopBar extends StatelessWidget implements PreferredSizeWidget {
  const AppTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: AppSearchBar(
        onSearch: (query) {
          context.push(AppRoutes.products, extra: SearchSource(query));
        },
      ),
      centerTitle: false,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
