import 'package:commerce_flutter_storefront/core/constants/error_codes.dart';
import 'package:commerce_flutter_storefront/core/exceptions/app_exception.dart';

import 'package:commerce_flutter_storefront/features/account/presentation/pages/account_authenticated_page.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/providers/account_provider.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_error_view.dart';
import 'package:commerce_flutter_storefront/features/auth/presentation/pages/login_page.dart';
import 'package:commerce_flutter_storefront/features/auth/presentation/providers/auth_provider.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/protected_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProtectedView(child: _AccountContent());
  }
}

class _AccountContent extends ConsumerWidget {
  const _AccountContent();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(hasLocalSessionProvider);

    return switch (session) {
      AsyncLoading() => const Center(child: CircularProgressIndicator()),

      AsyncError(:final error) => AccountErrorView(
        error: error,
        onRetry: () {
          ref.invalidate(hasLocalSessionProvider);
        },
      ),

      AsyncData(:final value) =>
        value
            ? const _AuthenticatedAccount()
            : const LoginPage(showAppBar: false, isEmbedded: true),
    };
  }
}

class _AuthenticatedAccount extends ConsumerWidget {
  const _AuthenticatedAccount();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(userProfileProvider);

    return switch (profile) {
      AsyncLoading() => const Center(child: CircularProgressIndicator()),

      AsyncError(:final error) =>
        error is AppException && error.code == ErrorCodes.unauthorized
            ? const LoginPage(showAppBar: false, isEmbedded: true)
            : AccountErrorView(
                error: error,
                onRetry: () {
                  ref.invalidate(userProfileProvider);
                },
              ),

      AsyncData(:final value) => AccountAuthenticatedPage(
        user: value,
        onRefresh: () {
          return ref.refresh(userProfileProvider.future);
        },
      ),
    };
  }
}
