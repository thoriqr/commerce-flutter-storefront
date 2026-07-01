import 'package:commerce_flutter_storefront/features/account/data/models/user_profile.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/providers/account_provider.dart';
import 'package:commerce_flutter_storefront/features/auth/presentation/notifiers/auth_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AccountAuthenticatedView extends ConsumerWidget {
  const AccountAuthenticatedView({super.key, required this.user});

  final UserProfile user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(authProvider);

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Hello ${user.displayName}'),

          const SizedBox(height: 24),

          FilledButton(
            onPressed: () async {
              await ref.refresh(userProfileProvider.future);
            },
            child: const Text('Refresh Profile'),
          ),

          const SizedBox(height: 16),

          FilledButton(
            onPressed: auth.isLoading
                ? null
                : () async {
                    await ref.read(authProvider.notifier).logout();
                  },
            child: auth.isLoading
                ? const SizedBox(
                    width: 18,
                    height: 18,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Text('Logout'),
          ),
        ],
      ),
    );
  }
}
