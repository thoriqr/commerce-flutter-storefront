import 'package:commerce_flutter_storefront/core/router/app_routes.dart';
import 'package:commerce_flutter_storefront/features/account/data/models/user_profile.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_connected_accounts.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_default_address.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_info.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_logout_tile.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_security.dart';
import 'package:commerce_flutter_storefront/features/auth/presentation/mutations/auth_mutations.dart';
import 'package:commerce_flutter_storefront/features/product/domain/product_source.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/app_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AccountAuthenticatedPage extends ConsumerWidget {
  const AccountAuthenticatedPage({super.key, required this.user});

  final UserProfile user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(authMutationsProvider);

    return Scaffold(
      appBar: AppHeader(
        showBackButton: false,
        onSearch: (query) {
          context.push(AppRoutes.products, extra: SearchSource(query));
        },
      ),
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
              await ref.read(authMutationsProvider.notifier).logout();
            },
          ),
        ],
      ),
    );
  }
}
