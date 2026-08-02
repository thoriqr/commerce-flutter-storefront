import 'package:commerce_flutter_storefront/core/constants/error_codes.dart';
import 'package:commerce_flutter_storefront/core/exceptions/app_exception.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/providers/account_provider.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_error_view.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_guest_view.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/upsert_address_form.dart';
import 'package:commerce_flutter_storefront/features/auth/constants/login_redirect.dart';
import 'package:commerce_flutter_storefront/features/auth/presentation/providers/auth_provider.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/app_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class UpsertAddressPage extends ConsumerWidget {
  const UpsertAddressPage({
    super.key,
    this.addressId,
    this.onCreated,
    this.loginRedirect,
  });

  final int? addressId;
  final Future<void> Function(int addressId)? onCreated;
  final LoginRedirect? loginRedirect;

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

      AsyncError(:final error) => Scaffold(
        appBar: AppHeader(
          title: isEdit ? 'Edit Address' : 'New Address',
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
          title: isEdit ? 'Edit Address' : 'New Address',
          showCartButton: false,
          onSearch: (_) {},
        ),
        body: AccountGuestView(
          redirect:
              loginRedirect ??
              LoginRedirect(
                GoRouterState.of(context).uri.toString(),
                requiresSameUser: true,
              ),
        ),
      ),

      AsyncData(value: true) =>
        isEdit
            ? _EditAddressContent(
                addressId: addressId!,
                onCreated: onCreated,
                loginRedirect: loginRedirect,
              )
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
  const _EditAddressContent({
    required this.addressId,
    this.onCreated,
    this.loginRedirect,
  });

  final int addressId;
  final Future<void> Function(int addressId)? onCreated;
  final LoginRedirect? loginRedirect;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final address = ref.watch(userAddressProvider(addressId));

    final body = switch (address) {
      AsyncLoading() => const Center(child: CircularProgressIndicator()),

      AsyncError(:final error)
          when error is AppException && error.code == ErrorCodes.unauthorized =>
        AccountGuestView(
          redirect:
              loginRedirect ??
              LoginRedirect(
                GoRouterState.of(context).uri.toString(),
                requiresSameUser: true,
              ),
        ),

      AsyncError(:final error) => AccountErrorView(
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
