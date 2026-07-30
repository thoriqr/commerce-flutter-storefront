import 'package:commerce_flutter_storefront/core/router/app_routes.dart';
import 'package:commerce_flutter_storefront/features/auth/presentation/providers/auth_provider.dart';
import 'package:commerce_flutter_storefront/features/auth/presentation/providers/auth_transition_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ProtectedView extends ConsumerStatefulWidget {
  const ProtectedView({
    super.key,
    required this.child,
    this.requiresSameUser = false,
  });

  final Widget child;
  final bool requiresSameUser;

  @override
  ConsumerState<ProtectedView> createState() => _ProtectedViewState();
}

class _ProtectedViewState extends ConsumerState<ProtectedView> {
  bool _isDiscardingContext = false;

  void _log(String message) {
    debugPrint(
      '[ProtectedView#${identityHashCode(this)}] '
      'sameUser=${widget.requiresSameUser} | $message',
    );
  }

  bool _canReveal(AuthTransition transition, AsyncValue<bool> session) {
    final hasSession = switch (session) {
      AsyncData(:final value) => value,
      _ => false,
    };

    final result =
        !_isDiscardingContext &&
        transition.phase == AuthTransitionPhase.resolving &&
        hasSession &&
        (!widget.requiresSameUser ||
            transition.canRestorePreviousContext == true);

    _log(
      '_canReveal '
      'phase=${transition.phase} '
      'hasSession=$hasSession '
      'canRestore=${transition.canRestorePreviousContext} '
      'discarding=$_isDiscardingContext '
      '=> $result',
    );

    return result;
  }

  void _finishIfReady(String source) {
    if (!mounted) {
      _log('_finishIfReady source=$source -> SKIP: unmounted');
      return;
    }

    if (_isDiscardingContext) {
      _log('_finishIfReady source=$source -> SKIP: discarding context');
      return;
    }

    final transition = ref.read(authTransitionStateProvider);
    final session = ref.read(hasLocalSessionProvider);

    _log(
      '_finishIfReady source=$source '
      'phase=${transition.phase} '
      'session=$session',
    );

    if (!_canReveal(transition, session)) {
      _log('_finishIfReady source=$source -> NOT READY');
      return;
    }

    _log('_finishIfReady source=$source -> FINISH');

    ref.read(authTransitionStateProvider.notifier).finish();
  }

  String _transitionMessage(AuthTransition transition) {
    final isSwitchingAccount =
        widget.requiresSameUser &&
        transition.canRestorePreviousContext == false;

    return isSwitchingAccount
        ? 'Switching accounts...'
        : 'Loading your account...';
  }

  @override
  void initState() {
    super.initState();

    _log('MOUNT');
  }

  @override
  void dispose() {
    _log('DISPOSE');

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(authTransitionStateProvider, (previous, next) {
      _log(
        'TRANSITION LISTENER '
        '${previous?.phase} -> ${next.phase} '
        'canRestore=${next.canRestorePreviousContext}',
      );

      if (next.phase != AuthTransitionPhase.resolving) {
        _log('TRANSITION LISTENER -> ignore non-resolving');
        return;
      }

      if (widget.requiresSameUser && next.canRestorePreviousContext == false) {
        if (_isDiscardingContext) {
          _log('DISCARD -> already in progress');
          return;
        }

        _isDiscardingContext = true;

        _log('DISCARD -> different user');
        _log('DISCARD -> child permanently covered until dispose');

        if (context.canPop()) {
          _log('DISCARD -> context.pop()');
          context.pop();
        } else {
          _log('DISCARD -> context.go(home)');
          context.go(AppRoutes.home);
        }

        return;
      }

      _finishIfReady('transition-listener');
    });

    ref.listen(hasLocalSessionProvider, (previous, next) {
      _log(
        'SESSION LISTENER '
        '$previous -> $next',
      );

      _finishIfReady('session-listener');
    });

    final transition = ref.watch(authTransitionStateProvider);

    _log(
      'BUILD '
      'phase=${transition.phase} '
      'canRestore=${transition.canRestorePreviousContext} '
      'discarding=$_isDiscardingContext',
    );

    // Once this boundary is known to belong to the previous user,
    // never reveal its child again. Another ProtectedView may finish
    // the global transition while this route is still being removed.
    if (_isDiscardingContext) {
      _log('KEEP COVERED -> discarding previous user context');

      return const _AuthTransitionView(message: 'Switching accounts...');
    }

    if (transition.phase == AuthTransitionPhase.resolving) {
      final message = _transitionMessage(transition);

      _log('SHOW TRANSITION VIEW "$message"');

      return _AuthTransitionView(message: message);
    }

    _log('REVEAL CHILD');

    return widget.child;
  }
}

class _AuthTransitionView extends StatelessWidget {
  const _AuthTransitionView({required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const LinearProgressIndicator(),

                const SizedBox(height: 16),

                Text(
                  message,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
