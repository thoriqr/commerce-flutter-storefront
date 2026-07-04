import 'package:flutter/material.dart';

import '../../data/models/user_profile.dart';

class AccountConnectedAccounts extends StatelessWidget {
  const AccountConnectedAccounts({super.key, required this.providers});

  final List<UserProvider> providers;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          children: [
            const ListTile(
              leading: Icon(Icons.link),
              title: Text('Connected Accounts'),
              subtitle: Text('Sign-in methods linked to your account.'),
            ),

            if (providers.isEmpty)
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: Text(
                  'No connected accounts.',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ),

            for (final provider in providers)
              ListTile(
                leading: const CircleAvatar(child: Icon(Icons.link)),
                title: Text(provider.provider.value),
                subtitle: Text(provider.providerEmail),
              ),
          ],
        ),
      ),
    );
  }
}
