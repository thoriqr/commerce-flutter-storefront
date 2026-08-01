import 'package:commerce_flutter_storefront/core/constants/error_codes.dart';
import 'package:commerce_flutter_storefront/core/exceptions/app_exception.dart';

import 'package:commerce_flutter_storefront/features/account/presentation/pages/account_authenticated_page.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/providers/account_provider.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_error_view.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_guest_view.dart';
import 'package:commerce_flutter_storefront/features/auth/constants/login_redirect.dart';
import 'package:commerce_flutter_storefront/features/auth/presentation/providers/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:commerce_flutter_storefront/core/router/app_routes.dart';

class AccountPage extends ConsumerWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(hasLocalSessionProvider);

    return switch (session) {
      AsyncLoading() => const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),

      AsyncError(:final error) => Scaffold(
        body: AccountErrorView(
          error: error,
          onRetry: () {
            ref.invalidate(hasLocalSessionProvider);
          },
        ),
      ),

      AsyncData(value: false) => const Scaffold(
        body: AccountGuestView(redirect: LoginRedirect(AppRoutes.account)),
      ),

      AsyncData(value: true) => const _AuthenticatedAccount(),
    };
  }
}

class _AuthenticatedAccount extends ConsumerWidget {
  const _AuthenticatedAccount();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(userProfileProvider);

    return switch (profile) {
      AsyncLoading() => const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),

      AsyncError(:final error)
          when error is AppException && error.code == ErrorCodes.unauthorized =>
        const Scaffold(body: AccountGuestView()),

      AsyncError(:final error) => Scaffold(
        body: AccountErrorView(
          error: error,
          onRetry: () {
            ref.invalidate(userProfileProvider);
          },
        ),
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
