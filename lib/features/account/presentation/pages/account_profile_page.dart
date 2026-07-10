import 'package:commerce_flutter_storefront/features/account/data/models/user_profile.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/providers/account_provider.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_guest_view.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_profile_form.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/app_header.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/protected_async_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_error_view.dart';

class AccountProfilePage extends ConsumerWidget {
  const AccountProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppHeader(
        title: 'Profile',
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
          return AccountProfileForm(user: user);
        },
      ),
    );
  }
}
