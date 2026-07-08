import 'package:commerce_flutter_storefront/features/account/data/models/user_profile.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/pages/account_authenticated_page.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/providers/account_provider.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_error_view.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_guest_view.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/protected_async_view.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AccountPage extends ConsumerWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ProtectedAsyncView<UserProfile>(
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
        return AccountAuthenticatedPage(
          user: user,
          onRefresh: () {
            return ref.refresh(userProfileProvider.future);
          },
        );
      },
    );
  }
}
