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

    return profile.when(
      loading: () => const Center(child: CircularProgressIndicator()),

      data: (user) {
        return AccountAuthenticatedPage(
          user: user,
          onRefresh: () {
            return ref.refresh(userProfileProvider.future);
          },
        );
      },

      error: (error, _) {
        if (error is AppException && error.code == ErrorCodes.unauthorized) {
          return const LoginPage(showAppBar: false, isEmbedded: true);
        }

        return AccountErrorView(
          error: error,
          onRetry: () {
            ref.invalidate(userProfileProvider);
          },
        );
      },
    );
  }
}
