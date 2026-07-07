import 'package:commerce_flutter_storefront/features/account/presentation/providers/account_provider.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_profile_form.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/app_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_error_view.dart';

class AccountProfilePage extends ConsumerWidget {
  const AccountProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(userProfileProvider);

    return Scaffold(
      appBar: AppHeader(
        title: 'Profile',
        showCartButton: false,
        onSearch: (_) {},
      ),
      body: profile.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        data: (user) => AccountProfileForm(user: user),
        error: (error, _) => AccountErrorView(
          error: error,
          onRetry: () => ref.invalidate(userProfileProvider),
        ),
      ),
    );
  }
}
