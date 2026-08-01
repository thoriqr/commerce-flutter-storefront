import 'package:commerce_flutter_storefront/core/constants/error_codes.dart';
import 'package:commerce_flutter_storefront/core/exceptions/app_exception.dart';
import 'package:commerce_flutter_storefront/core/router/account_routes.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/providers/account_provider.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_error_view.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/upsert_address_form.dart';
import 'package:commerce_flutter_storefront/features/auth/constants/login_redirect.dart';
import 'package:commerce_flutter_storefront/features/auth/presentation/providers/auth_provider.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/app_header.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/protected_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:commerce_flutter_storefront/features/auth/presentation/pages/login_page.dart';

class UpsertAddressPage extends StatelessWidget {
  const UpsertAddressPage({super.key, this.addressId, this.onCreated});

  final int? addressId;
  final Future<void> Function(int addressId)? onCreated;

  @override
  Widget build(BuildContext context) {
    return ProtectedView(
      requiresSameUser: true,
      child: _UpsertAddressContent(addressId: addressId, onCreated: onCreated),
    );
  }
}

class _UpsertAddressContent extends ConsumerWidget {
  const _UpsertAddressContent({this.addressId, this.onCreated});

  final int? addressId;
  final Future<void> Function(int addressId)? onCreated;

  bool get isEdit => addressId != null;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(hasLocalSessionProvider);

    return switch (session) {
      AsyncLoading() => Scaffold(
        appBar: AppHeader(
          title: isEdit ? 'Edit Address' : 'New Address',
          showCartButton: false,
          onSearch: (_) {},
        ),
        body: const Center(child: CircularProgressIndicator()),
      ),

      AsyncError() => Scaffold(
        appBar: AppHeader(
          title: isEdit ? 'Edit Address' : 'New Address',
          showCartButton: false,
          onSearch: (_) {},
        ),
        body: AccountErrorView(
          error: session.error,
          onRetry: () {
            ref.invalidate(hasLocalSessionProvider);
          },
        ),
      ),

      AsyncData(value: false) => LoginPage(
        redirect: LoginRedirect(
          isEdit
              ? AccountRoutes.addressLocation(addressId!)
              : AccountRoutes.addressNew,
          requiresSameUser: true,
        ),
        isEmbedded: true,
      ),

      AsyncData(value: true) =>
        isEdit
            ? _EditAddressContent(addressId: addressId!, onCreated: onCreated)
            : Scaffold(
                appBar: AppHeader(
                  title: 'New Address',
                  showCartButton: false,
                  onSearch: (_) {},
                ),
                body: UpsertAddressForm(onCreated: onCreated),
              ),
    };
  }
}

class _EditAddressContent extends ConsumerWidget {
  const _EditAddressContent({required this.addressId, this.onCreated});

  final int addressId;
  final Future<void> Function(int addressId)? onCreated;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final address = ref.watch(userAddressProvider(addressId));

    final body = switch (address) {
      AsyncLoading() => const Center(child: CircularProgressIndicator()),

      AsyncError(:final error) =>
        error is AppException && error.code == ErrorCodes.unauthorized
            ? LoginPage(
                redirect: LoginRedirect(
                  AccountRoutes.addressLocation(addressId),
                  requiresSameUser: true,
                ),
                isEmbedded: true,
              )
            : AccountErrorView(
                error: error,
                onRetry: () {
                  ref.invalidate(userAddressProvider(addressId));
                },
              ),

      AsyncData(:final value) => UpsertAddressForm(
        addressId: addressId,
        initialValue: value,
        onCreated: onCreated,
      ),
    };

    return Scaffold(
      appBar: AppHeader(
        title: 'Edit Address',
        showCartButton: false,
        onSearch: (_) {},
      ),
      body: body,
    );
  }
}
