import 'package:commerce_flutter_storefront/core/constants/error_codes.dart';
import 'package:commerce_flutter_storefront/core/exceptions/app_exception.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/providers/account_provider.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_guest_view.dart';
import 'package:commerce_flutter_storefront/features/auth/constants/login_redirect.dart';
import 'package:commerce_flutter_storefront/features/auth/presentation/providers/auth_provider.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/app_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:commerce_flutter_storefront/features/account/data/mocks/user_addresses_mock.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_error_view.dart';
import 'package:go_router/go_router.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_address_list.dart';

class AccountAddressesPage extends ConsumerWidget {
  const AccountAddressesPage({super.key});

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

      AsyncData(value: false) => Scaffold(
        appBar: AppHeader(
          title: 'Addresses',
          showCartButton: false,
          onSearch: (_) {},
        ),
        body: AccountGuestView(
          redirect: LoginRedirect(
            GoRouterState.of(context).uri.toString(),
            requiresSameUser: true,
          ),
        ),
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
      AsyncError(:final error)
          when error is AppException && error.code == ErrorCodes.unauthorized =>
        AccountGuestView(
          redirect: LoginRedirect(
            GoRouterState.of(context).uri.toString(),
            requiresSameUser: true,
          ),
        ),

      AsyncError(:final error) => AccountErrorView(
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
