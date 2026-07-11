import 'package:commerce_flutter_storefront/features/account/data/models/user_profile.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/providers/account_provider.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_error_view.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_guest_view.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/change_password_form.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/set_password_form.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/app_header.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/protected_async_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AccountSecurityPage extends ConsumerWidget {
  const AccountSecurityPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppHeader(
        title: 'Security',
        showCartButton: false,
        onSearch: (_) {},
      ),
      body: ProtectedAsyncView<UserProfile>(
        value: ref.watch(userProfileProvider),

        loading: const Center(child: CircularProgressIndicator()),

        guest: const AccountGuestView(),

        error: (e) => AccountErrorView(
          error: e,
          onRetry: () {
            ref.invalidate(userProfileProvider);
          },
        ),

        builder: (user) {
          return user.hasPassword
              ? const ChangePasswordForm()
              : const SetPasswordForm();
        },
      ),
    );
  }
}
