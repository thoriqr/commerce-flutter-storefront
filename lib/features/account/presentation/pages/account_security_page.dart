import 'package:commerce_flutter_storefront/core/constants/error_codes.dart';
import 'package:commerce_flutter_storefront/core/exceptions/app_exception.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/providers/account_provider.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_error_view.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/change_password_form.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/set_password_form.dart';
import 'package:commerce_flutter_storefront/features/auth/presentation/pages/login_page.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/app_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AccountSecurityPage extends ConsumerWidget {
  const AccountSecurityPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(userProfileProvider);

    final body = switch (profile) {
      AsyncLoading() => const Center(child: CircularProgressIndicator()),

      AsyncError(:final error) =>
        error is AppException && error.code == ErrorCodes.unauthorized
            ? const LoginPage()
            : AccountErrorView(
                error: error,
                onRetry: () {
                  ref.invalidate(userProfileProvider);
                },
              ),

      AsyncData(:final value) =>
        value.hasPassword
            ? const ChangePasswordForm()
            : const SetPasswordForm(),
    };

    return Scaffold(
      appBar: AppHeader(
        title: switch (profile) {
          AsyncData(:final value) =>
            value.hasPassword ? 'Change Password' : 'Create Password',
          _ => 'Security',
        },
        showCartButton: false,
        onSearch: (_) {},
      ),
      body: body,
    );
  }
}
