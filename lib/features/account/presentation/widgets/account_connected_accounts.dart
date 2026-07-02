import 'package:flutter/material.dart';

import '../../data/models/user_profile.dart';

class AccountConnectedAccounts extends StatelessWidget {
  const AccountConnectedAccounts({super.key, required this.providers});

  final List<UserProvider> providers;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(title: const Text('Connected Accounts')),

          if (providers.isEmpty)
            const Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Text('No connected accounts'),
            ),

          for (final provider in providers)
            ListTile(
              leading: const CircleAvatar(child: Icon(Icons.link)),
              title: Text(provider.provider.value),
              subtitle: Text(provider.providerEmail),
            ),
        ],
      ),
    );
  }
}
