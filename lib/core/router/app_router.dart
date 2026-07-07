import 'package:commerce_flutter_storefront/core/router/account_routes.dart';
import 'package:commerce_flutter_storefront/core/router/app_routes.dart';
import 'package:commerce_flutter_storefront/core/router/auth_routes.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/pages/account_addresses_page.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/pages/account_orders_page.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/pages/account_page.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/pages/account_profile_page.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/pages/account_security_page.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/pages/upsert_address_page.dart';
import 'package:commerce_flutter_storefront/features/auth/constants/login_redirect.dart';
import 'package:commerce_flutter_storefront/features/auth/presentation/pages/login_page.dart';
import 'package:commerce_flutter_storefront/features/cart/presentation/pages/cart_page.dart';
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
    GoRoute(
      path: AuthRoutes.login,
      builder: (context, state) {
        return LoginPage(redirect: state.extra as LoginRedirect?);
      },
    ),
    GoRoute(path: AppRoutes.cart, builder: (_, _) => const CartPage()),
    GoRoute(
      path: AccountRoutes.profile,
      builder: (_, _) => const AccountProfilePage(),
    ),

    GoRoute(
      path: AccountRoutes.addresses,
      builder: (_, _) => const AccountAddressesPage(),
    ),

    GoRoute(
      path: AccountRoutes.orders,
      builder: (_, _) => const AccountOrdersPage(),
    ),

    GoRoute(
      path: AccountRoutes.security,
      builder: (_, _) => const AccountSecurityPage(),
    ),

    GoRoute(
      path: AccountRoutes.addressNew,
      builder: (_, _) => const UpsertAddressPage(),
    ),

    GoRoute(
      path: AccountRoutes.address,
      builder: (context, state) {
        final id = int.parse(state.pathParameters['id']!);

        return UpsertAddressPage(addressId: id);
      },
    ),
  ],
);
