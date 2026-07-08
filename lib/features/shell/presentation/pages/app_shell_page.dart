import 'package:commerce_flutter_storefront/features/account/presentation/providers/account_provider.dart';
import 'package:commerce_flutter_storefront/features/shell/presentation/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AppShellPage extends ConsumerStatefulWidget {
  const AppShellPage({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  ConsumerState<AppShellPage> createState() => _AppShellPageState();
}

class _AppShellPageState extends ConsumerState<AppShellPage> {
  @override
  void initState() {
    super.initState();

    Future.microtask(() async {
      try {
        await ref.refresh(userProfileProvider.future);
      } catch (_) {
        // handled by interceptor
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.navigationShell,
      bottomNavigationBar: BottomNavBar(
        currentIndex: widget.navigationShell.currentIndex,
        onTap: widget.navigationShell.goBranch,
      ),
    );
  }
}
