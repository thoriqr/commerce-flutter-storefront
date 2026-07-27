import 'package:commerce_flutter_storefront/core/auth/session_notice_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SessionNoticeListener extends ConsumerWidget {
  const SessionNoticeListener({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(sessionNoticeProvider, (previous, next) {
      if (next != SessionNoticeType.expired) {
        return;
      }

      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!context.mounted) {
          return;
        }

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Your session has expired. Please sign in again."),
          ),
        );

        ref.read(sessionNoticeProvider.notifier).clear();
      });
    });

    return child;
  }
}
