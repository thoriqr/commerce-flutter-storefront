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

  void _log(String message) {
    debugPrint('[AuthTransition#${identityHashCode(this)}] $message');
  }

  @override
  void initState() {
    super.initState();

    _log('MOUNT');

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) {
        return;
      }

      _log('INITIAL CHECK');

      _tryFinish();
    });
  }

  @override
  void dispose() {
    _log('DISPOSE');

    super.dispose();
  }

  void _tryFinish() {
    if (!mounted) {
      _log('SKIP -> unmounted');
      return;
    }

    if (_finished) {
      _log('SKIP -> already finished');
      return;
    }

    final transition = ref.read(authTransitionStateProvider);

    final isSwitchingAccount =
        widget.arguments.redirect?.requiresSameUser == true &&
        transition.canRestorePreviousContext == false;

    final message = isSwitchingAccount
        ? 'Switching account...'
        : 'Signing you in...';

    _log(
      'BUILD '
      'phase=${transition.phase} '
      'message="$message"',
    );

    final session = ref.read(hasLocalSessionProvider);

    final hasSession = switch (session) {
      AsyncData(:final value) => value,
      _ => false,
    };

    _log(
      'CHECK '
      'phase=${transition.phase} '
      'loading=${session.isLoading} '
      'hasSession=$hasSession '
      'canRestore=${transition.canRestorePreviousContext}',
    );

    if (transition.phase != AuthTransitionPhase.resolving) {
      _log('WAIT -> transition not resolving');
      return;
    }

    if (!hasSession) {
      _log('WAIT -> session not ready');
      return;
    }

    _finished = true;

    _log('FINISH TRANSITION');

    ref.read(authTransitionStateProvider.notifier).finish();

    final redirect = widget.arguments.redirect;

    if (redirect == null) {
      _log('GO -> HOME (no redirect)');
      context.go(AppRoutes.home);
      return;
    }

    if (redirect.requiresSameUser &&
        transition.canRestorePreviousContext == false) {
      _log('GO -> HOME (switch account)');
      context.go(AppRoutes.home);
      return;
    }

    _log('GO -> ${redirect.location}');
    context.go(redirect.location);
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('Transition build');
    ref.listen(authTransitionStateProvider, (previous, next) {
      _log(
        'TRANSITION '
        '${previous?.phase} -> ${next.phase}',
      );

      _tryFinish();
    });

    ref.listen(hasLocalSessionProvider, (previous, next) {
      final previousHasSession = switch (previous) {
        AsyncData(:final value) => value,
        _ => false,
      };

      final nextHasSession = switch (next) {
        AsyncData(:final value) => value,
        _ => false,
      };

      _log(
        'SESSION '
        '$previousHasSession -> $nextHasSession '
        'loading=${next.isLoading}',
      );

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
