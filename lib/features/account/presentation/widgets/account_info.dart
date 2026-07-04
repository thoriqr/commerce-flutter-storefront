import 'package:commerce_flutter_storefront/core/router/account_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../data/models/user_profile.dart';

class AccountInfo extends StatelessWidget {
  const AccountInfo({super.key, required this.user});

  final UserProfile user;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final displayName = user.displayName?.trim() ?? '';

    final initials = switch (displayName.split(RegExp(r'\s+'))) {
      _ when displayName.isEmpty => '?',

      final names when names.length >= 2 =>
        '${names.first[0]}${names.last[0]}'.toUpperCase(),

      final names =>
        names.first.substring(0, names.first.length >= 2 ? 2 : 1).toUpperCase(),
    };

    final isVerified = user.status == UserStatus.active;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CircleAvatar(
              radius: 36,
              child: Text(
                initials,
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 16),

            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: Text(
                    user.displayName ?? '-',
                    textAlign: TextAlign.center,
                    style: theme.textTheme.titleLarge,
                  ),
                ),

                const SizedBox(width: 6),

                IconButton(
                  visualDensity: VisualDensity.compact,
                  constraints: const BoxConstraints(),
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    context.push(AccountRoutes.profile);
                  },
                  icon: Icon(
                    Icons.edit_outlined,
                    size: 18,
                    color: theme.colorScheme.outline,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 6),

            Text(
              user.email,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),

            const SizedBox(height: 16),

            Chip(
              avatar: Icon(
                isVerified ? Icons.verified : Icons.warning_amber_rounded,
                size: 18,
              ),
              label: Text(isVerified ? 'Verified' : 'Account Restricted'),
            ),
          ],
        ),
      ),
    );
  }
}
