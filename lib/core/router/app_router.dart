import 'package:commerce_flutter_storefront/core/router/app_routes.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/pages/account_page.dart';
import 'package:commerce_flutter_storefront/features/category/presentation/pages/category_tree_page.dart';
import 'package:commerce_flutter_storefront/features/home/presentation/pages/home_page.dart';
import 'package:commerce_flutter_storefront/features/product/domain/product_source.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/pages/product_detail_page.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/pages/product_listing_page.dart';
import 'package:commerce_flutter_storefront/features/shell/presentation/pages/app_shell_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return AppShellPage(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(path: AppRoutes.home, builder: (_, _) => const HomePage()),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.categories,
              builder: (_, _) => const CategoryTreePage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.account,
              builder: (_, _) => const AccountPage(),
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: AppRoutes.products,
      builder: (context, state) {
        final source = state.extra as ProductSource;

        return ProductListingPage(source: source);
      },
    ),

    GoRoute(
      path: AppRoutes.product,
      builder: (context, state) {
        final id = int.parse(state.pathParameters['id']!);

        return ProductDetailPage(id: id);
      },
    ),
  ],
);
