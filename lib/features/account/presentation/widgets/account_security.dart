import 'package:flutter/material.dart';

class AccountSecurity extends StatelessWidget {
  const AccountSecurity({super.key, required this.hasPassword});

  final bool hasPassword;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.lock_outline),
        title: const Text('Password'),
        subtitle: Text(
          hasPassword ? 'Password is set' : 'Password has not been created',
        ),
        trailing: const Icon(Icons.chevron_right),
        onTap: () {
          // TODO
        },
      ),
    );
  }
}
