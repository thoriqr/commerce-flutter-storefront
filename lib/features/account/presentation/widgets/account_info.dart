import 'package:flutter/material.dart';

import '../../data/models/user_profile.dart';

class AccountInfo extends StatelessWidget {
  const AccountInfo({super.key, required this.user});

  final UserProfile user;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const CircleAvatar(radius: 36, child: Icon(Icons.person, size: 36)),

            const SizedBox(height: 16),

            Text(
              user.displayName ?? '-',
              style: Theme.of(context).textTheme.titleLarge,
            ),

            const SizedBox(height: 4),

            Text(user.email, style: Theme.of(context).textTheme.bodyMedium),

            const SizedBox(height: 12),

            Chip(
              avatar: Icon(
                user.status == UserStatus.active ? Icons.verified : Icons.block,
                size: 18,
              ),
              label: Text(user.status.value),
            ),
          ],
        ),
      ),
    );
  }
}
