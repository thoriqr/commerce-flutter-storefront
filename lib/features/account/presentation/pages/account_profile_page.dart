import 'package:commerce_flutter_storefront/core/constants/error_codes.dart';
import 'package:commerce_flutter_storefront/core/exceptions/app_exception.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/providers/account_provider.dart';

import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_profile_form.dart';
import 'package:commerce_flutter_storefront/features/auth/constants/login_redirect.dart';
import 'package:commerce_flutter_storefront/features/auth/presentation/providers/auth_provider.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/app_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_error_view.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_guest_view.dart';
import 'package:go_router/go_router.dart';

class AccountProfilePage extends ConsumerWidget {
  const AccountProfilePage({super.key});

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

      AsyncData(value: false) => Scaffold(
        appBar: AppHeader(
          title: 'Profile',
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
