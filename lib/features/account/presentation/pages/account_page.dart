import 'package:commerce_flutter_storefront/core/exceptions/app_exception.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/providers/account_provider.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_authenticated_view.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_error_view.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_guest_view.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_loading_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AccountPage extends ConsumerWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint("ACCOUNT BUILD");
    final profile = ref.watch(userProfileProvider);

    return profile.when(
      loading: () => const AccountLoadingView(),
      data: (user) => AccountAuthenticatedView(user: user),
      error: (error, stackTrace) {
        if (error is AppException && error.code == 'UNAUTHORIZED') {
          return const AccountGuestView();
        }

        return AccountErrorView(
          error: error,
          onRetry: () => ref.invalidate(userProfileProvider),
        );
      },
    );
  }
}
