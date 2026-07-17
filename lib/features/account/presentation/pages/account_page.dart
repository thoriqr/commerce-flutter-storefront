import 'package:commerce_flutter_storefront/core/constants/error_codes.dart';
import 'package:commerce_flutter_storefront/core/exceptions/app_exception.dart';

import 'package:commerce_flutter_storefront/features/account/presentation/pages/account_authenticated_page.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/providers/account_provider.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_error_view.dart';
import 'package:commerce_flutter_storefront/features/auth/presentation/pages/login_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AccountPage extends ConsumerWidget {
  const AccountPage({super.key});

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
