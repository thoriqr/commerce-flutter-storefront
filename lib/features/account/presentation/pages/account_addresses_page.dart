import 'package:commerce_flutter_storefront/core/constants/error_codes.dart';
import 'package:commerce_flutter_storefront/core/exceptions/app_exception.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/providers/account_provider.dart';
import 'package:commerce_flutter_storefront/features/auth/constants/login_redirect.dart';
import 'package:commerce_flutter_storefront/features/auth/presentation/pages/login_page.dart';
import 'package:commerce_flutter_storefront/features/auth/presentation/providers/auth_provider.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/app_header.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/protected_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:commerce_flutter_storefront/features/account/data/mocks/user_addresses_mock.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_error_view.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_address_list.dart';
import 'package:commerce_flutter_storefront/core/router/account_routes.dart';

class AccountAddressesPage extends StatelessWidget {
  const AccountAddressesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProtectedView(
      requiresSameUser: true,
      child: _AccountAddressesContent(),
    );
  }
}

class _AccountAddressesContent extends ConsumerWidget {
  const _AccountAddressesContent();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(hasLocalSessionProvider);

    return switch (session) {
      AsyncLoading() => const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),

      AsyncError(:final error) => Scaffold(
        appBar: AppHeader(
          title: 'Addresses',
          showCartButton: false,
          onSearch: (_) {},
        ),
        body: AccountErrorView(
          error: error,
          onRetry: () {
            ref.invalidate(hasLocalSessionProvider);
          },
        ),
      ),

      AsyncData(value: false) => const LoginPage(
        redirect: LoginRedirect(
          AccountRoutes.addresses,
          requiresSameUser: true,
        ),
        isEmbedded: true,
      ),

      AsyncData(value: true) => const _AuthenticatedAccountAddresses(),
    };
  }
}

class _AuthenticatedAccountAddresses extends ConsumerWidget {
  const _AuthenticatedAccountAddresses();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final addressesAsync = ref.watch(userAddressesProvider);

    final addresses = switch (addressesAsync) {
      AsyncData(:final value) => value,
      _ => UserAddressesMock.item(),
    };

    final body = switch (addressesAsync) {
      AsyncError(:final error) =>
        error is AppException && error.code == ErrorCodes.unauthorized
            ? const LoginPage(
                redirect: LoginRedirect(
                  AccountRoutes.addresses,
                  requiresSameUser: true,
                ),
                isEmbedded: true,
              )
            : AccountErrorView(
                error: error,
                onRetry: () {
                  ref.invalidate(userAddressesProvider);
                },
              ),

      _ => AccountAddressList(
        addresses: addresses,
        onRefresh: () {
          return ref.refresh(userAddressesProvider.future);
        },
      ),
    };

    return Scaffold(
      appBar: AppHeader(
        title: 'Addresses',
        showCartButton: false,
        onSearch: (_) {},
      ),
      body: Skeletonizer(
        enabled: addressesAsync.isLoading && !addressesAsync.hasValue,
        child: body,
      ),
    );
  }
}
