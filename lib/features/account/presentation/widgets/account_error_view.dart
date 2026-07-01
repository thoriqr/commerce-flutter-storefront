import 'package:flutter/material.dart';

class AccountErrorView extends StatelessWidget {
  const AccountErrorView({
    super.key,
    required this.error,
    required this.onRetry,
  });

  final Object error;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.error_outline, size: 72),
            const SizedBox(height: 16),
            const Text("Something went wrong"),
            const SizedBox(height: 8),
            Text(error.toString(), textAlign: TextAlign.center),
            const SizedBox(height: 24),
            FilledButton(onPressed: onRetry, child: const Text("Retry")),
          ],
        ),
      ),
    );
  }
}
