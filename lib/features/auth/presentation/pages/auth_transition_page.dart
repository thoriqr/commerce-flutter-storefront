import 'package:commerce_flutter_storefront/core/router/app_routes.dart';
import 'package:commerce_flutter_storefront/features/auth/constants/auth_transition_arguments.dart';
import 'package:commerce_flutter_storefront/features/auth/presentation/providers/auth_provider.dart';
import 'package:commerce_flutter_storefront/features/auth/presentation/providers/auth_transition_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AuthTransitionPage extends ConsumerStatefulWidget {
  const AuthTransitionPage({super.key, required this.arguments});

  final AuthTransitionArguments arguments;

  @override
  ConsumerState<AuthTransitionPage> createState() => _AuthTransitionPageState();
}

class _AuthTransitionPageState extends ConsumerState<AuthTransitionPage> {
  bool _finished = false;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) {
        return;
      }

      _tryFinish();
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _tryFinish() {
    if (!mounted) {
      return;
    }

    if (_finished) {
      return;
    }

    final transition = ref.read(authTransitionStateProvider);

    final session = ref.read(hasLocalSessionProvider);

    final hasSession = switch (session) {
      AsyncData(:final value) => value,
      _ => false,
    };

    if (transition.phase != AuthTransitionPhase.resolving) {
      return;
    }

    if (!hasSession) {
      return;
    }

    _finished = true;

    ref.read(authTransitionStateProvider.notifier).finish();

    final redirect = widget.arguments.redirect;

    if (redirect == null) {
      context.go(AppRoutes.home);
      return;
    }

    if (redirect.requiresSameUser &&
        transition.canRestorePreviousContext == false) {
      context.go(AppRoutes.home);
      return;
    }

    context.go(redirect.location);
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(authTransitionStateProvider, (previous, next) {
      _tryFinish();
    });

    ref.listen(hasLocalSessionProvider, (previous, next) {
      _tryFinish();
    });

    final transition = ref.watch(authTransitionStateProvider);

    final isSwitchingAccount =
        widget.arguments.redirect?.requiresSameUser == true &&
        transition.canRestorePreviousContext == false;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircularProgressIndicator(),

                const SizedBox(height: 24),

                Text(
                  isSwitchingAccount
                      ? 'Switching account...'
                      : 'Signing you in...',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
