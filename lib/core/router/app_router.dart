import 'package:commerce_flutter_storefront/core/router/app_routes.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/pages/account_page.dart';
import 'package:commerce_flutter_storefront/features/categories/presentation/categories_page.dart';
import 'package:commerce_flutter_storefront/features/home/presentation/pages/home_page.dart';
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
              builder: (_, _) => const CategoriesPage(),
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

    // todo
    // GoRoute(
    //   path: AppRoutes.products,
    //   builder: ...
    // ),

    // GoRoute(
    //   path: AppRoutes.product,
    //   builder: ...
    // ),
  ],
);
