import 'package:commerce_flutter_storefront/features/account/presentation/providers/account_provider.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/app_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:commerce_flutter_storefront/features/account/data/mocks/user_addresses_mock.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_error_view.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_address_list.dart';

class AccountAddressesPage extends ConsumerWidget {
  const AccountAddressesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final addressesAsync = ref.watch(userAddressesProvider);

    final addresses = switch (addressesAsync) {
      AsyncData(:final value) => value,
      _ => UserAddressesMock.item(),
    };

    final body = switch (addressesAsync) {
      AsyncError(:final error) => AccountErrorView(
        error: error,
        onRetry: () => ref.invalidate(userAddressesProvider),
      ),

      _ => AccountAddressList(
        addresses: addresses,
        onRefresh: () => ref.refresh(userAddressesProvider.future),
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
