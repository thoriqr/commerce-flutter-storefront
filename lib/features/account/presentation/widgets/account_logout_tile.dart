import 'package:flutter/material.dart';

class AccountLogoutTile extends StatelessWidget {
  const AccountLogoutTile({
    super.key,
    required this.isLoading,
    required this.onLogout,
  });

  final bool isLoading;
  final VoidCallback onLogout;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.logout, color: Colors.red),
        title: const Text('Logout', style: TextStyle(color: Colors.red)),
        trailing: isLoading
            ? const SizedBox(
                width: 18,
                height: 18,
                child: CircularProgressIndicator(strokeWidth: 2),
              )
            : null,
        enabled: !isLoading,
        onTap: isLoading ? null : onLogout,
      ),
    );
  }
}
