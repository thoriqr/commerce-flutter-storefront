import 'package:commerce_flutter_storefront/features/account/presentation/providers/account_provider.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_error_view.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/upsert_address_form.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/app_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UpsertAddressPage extends ConsumerWidget {
  const UpsertAddressPage({super.key, this.addressId, this.onCreated});

  final int? addressId;
  final Future<void> Function(int addressId)? onCreated;

  bool get isEdit => addressId != null;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (!isEdit) {
      return Scaffold(
        appBar: AppHeader(
          title: 'New Address',
          showCartButton: false,
          onSearch: (_) {},
        ),
        body: UpsertAddressForm(onCreated: onCreated),
      );
    }

    final addressAsync = ref.watch(userAddressProvider(addressId!));

    return Scaffold(
      appBar: AppHeader(
        title: 'Edit Address',
        showCartButton: false,
        onSearch: (_) {},
      ),
      body: addressAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),

        data: (address) => UpsertAddressForm(
          addressId: addressId,
          initialValue: address,
          onCreated: onCreated,
        ),

        error: (error, _) => AccountErrorView(
          error: error,
          onRetry: () => ref.invalidate(userAddressProvider(addressId!)),
        ),
      ),
    );
  }
}
