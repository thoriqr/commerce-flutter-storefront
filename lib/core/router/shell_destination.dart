import 'package:flutter/material.dart';

import 'app_routes.dart';

class ShellDestination {
  const ShellDestination({
    required this.label,
    required this.icon,
    required this.selectedIcon,
    required this.path,
  });

  final String label;
  final IconData icon;
  final IconData selectedIcon;
  final String path;
}

const shellDestinations = [
  ShellDestination(
    label: 'Home',
    icon: Icons.home_outlined,
    selectedIcon: Icons.home,
    path: AppRoutes.home,
  ),
  ShellDestination(
    label: 'Categories',
    icon: Icons.category_outlined,
    selectedIcon: Icons.category,
    path: AppRoutes.categories,
  ),
  ShellDestination(
    label: 'Account',
    icon: Icons.person_outline,
    selectedIcon: Icons.person,
    path: AppRoutes.account,
  ),
];
