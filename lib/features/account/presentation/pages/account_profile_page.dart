import 'package:commerce_flutter_storefront/core/constants/error_codes.dart';
import 'package:commerce_flutter_storefront/core/exceptions/app_exception.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/providers/account_provider.dart';

import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_profile_form.dart';
import 'package:commerce_flutter_storefront/features/auth/constants/login_redirect.dart';
import 'package:commerce_flutter_storefront/features/auth/presentation/pages/login_page.dart';
import 'package:commerce_flutter_storefront/features/auth/presentation/providers/auth_provider.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/app_header.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/protected_view.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_error_view.dart';
import 'package:commerce_flutter_storefront/core/router/account_routes.dart';

class AccountProfilePage extends StatelessWidget {
  const AccountProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProtectedView(
      requiresSameUser: true,
      child: _AccountProfileContent(),
    );
  }
}

class _AccountProfileContent extends ConsumerWidget {
  const _AccountProfileContent();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(hasLocalSessionProvider);

    return switch (session) {
      AsyncLoading() => const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),

      AsyncError(:final error) => Scaffold(
        appBar: AppHeader(
          title: 'Profile',
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
        redirect: LoginRedirect(AccountRoutes.profile, requiresSameUser: true),
        isEmbedded: true,
      ),

      AsyncData(value: true) => const _AuthenticatedAccountProfile(),
    };
  }
}

class _AuthenticatedAccountProfile extends ConsumerWidget {
  const _AuthenticatedAccountProfile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(userProfileProvider);

    final body = switch (profile) {
      AsyncLoading() => const Center(child: CircularProgressIndicator()),

      AsyncError(:final error) =>
        error is AppException && error.code == ErrorCodes.unauthorized
            ? const LoginPage(
                redirect: LoginRedirect(
                  AccountRoutes.profile,
                  requiresSameUser: true,
                ),
                isEmbedded: true,
              )
            : AccountErrorView(
                error: error,
                onRetry: () {
                  ref.invalidate(userProfileProvider);
                },
              ),

      AsyncData(:final value) => AccountProfileForm(user: value),
    };

    return Scaffold(
      appBar: AppHeader(
        title: 'Profile',
        showCartButton: false,
        onSearch: (_) {},
      ),
      body: body,
    );
  }
}
