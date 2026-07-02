import 'package:commerce_flutter_storefront/features/account/data/models/user_profile.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_connected_accounts.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_default_address.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_info.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_logout_tile.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_security.dart';
import 'package:commerce_flutter_storefront/features/auth/presentation/notifiers/auth_notifier.dart';
import 'package:commerce_flutter_storefront/features/shell/presentation/widgets/app_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AccountAuthenticatedPage extends ConsumerWidget {
  const AccountAuthenticatedPage({super.key, required this.user});

  final UserProfile user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(authProvider);

    return Scaffold(
      appBar: const AppTopBar(),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          AccountInfo(user: user),

          const SizedBox(height: 16),

          AccountDefaultAddress(address: user.defaultAddress),

          const SizedBox(height: 16),

          AccountConnectedAccounts(providers: user.providers),

          const SizedBox(height: 16),

          AccountSecurity(hasPassword: user.hasPassword),

          const SizedBox(height: 24),

          AccountLogoutTile(
            isLoading: auth.isLoading,
            onLogout: () async {
              await ref.read(authProvider.notifier).logout();
            },
          ),
        ],
      ),
    );
  }
}
