import 'package:flutter/material.dart';
import 'package:commerce_flutter_storefront/core/router/app_routes.dart';
import 'package:commerce_flutter_storefront/core/router/account_routes.dart';

enum NavigationAction { go, push }

class NavigationItem {
  const NavigationItem({
    required this.title,
    required this.icon,
    required this.route,
    required this.action,
  });

  final String title;
  final IconData icon;
  final String route;
  final NavigationAction action;
}

const commonNavigationItems = [
  NavigationItem(
    title: 'Home',
    icon: Icons.home_outlined,
    route: AppRoutes.home,
    action: NavigationAction.go,
  ),
  NavigationItem(
    title: 'Categories',
    icon: Icons.category_outlined,
    route: AppRoutes.categories,
    action: NavigationAction.go,
  ),
  NavigationItem(
    title: 'Cart',
    icon: Icons.shopping_cart_outlined,
    route: AppRoutes.cart,
    action: NavigationAction.push,
  ),
];
const authenticatedNavigationItems = [
  NavigationItem(
    title: 'Orders',
    icon: Icons.receipt_long_outlined,
    route: AccountRoutes.orders,
    action: NavigationAction.push,
  ),
  NavigationItem(
    title: 'Addresses',
    icon: Icons.location_on_outlined,
    route: AccountRoutes.addresses,
    action: NavigationAction.push,
  ),
  NavigationItem(
    title: 'Profile',
    icon: Icons.person_outline,
    route: AccountRoutes.profile,
    action: NavigationAction.push,
  ),
  NavigationItem(
    title: 'Security',
    icon: Icons.lock_outline,
    route: AccountRoutes.security,
    action: NavigationAction.push,
  ),
];
