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

  bool _canReveal(AuthTransition transition, AsyncValue<bool> session) {
    if (transition.phase != AuthTransitionPhase.resolving) {
      return false;
    }

    final hasSession = switch (session) {
      AsyncData(:final value) => value,
      _ => false,
    };

    if (!hasSession) {
      return false;
    }

    return !widget.requiresSameUser ||
        transition.canRestorePreviousContext == true;
  }

  void _finishIfReady() {
    if (!mounted) {
      return;
    }

    final transition = ref.read(authTransitionStateProvider);
    final session = ref.read(hasLocalSessionProvider);

    if (!_canReveal(transition, session)) {
      return;
    }

    ref.read(authTransitionStateProvider.notifier).finish();
  }

  String _transitionMessage(AuthTransition transition) {
    final isSwitchingAccount =
        widget.requiresSameUser &&
        transition.canRestorePreviousContext == false;

    if (isSwitchingAccount) {
      return 'Switching accounts...';
    }

    return 'Getting things ready...';
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(authTransitionStateProvider, (previous, next) {
      if (next.phase != AuthTransitionPhase.resolving) {
        return;
      }

      if (widget.requiresSameUser && next.canRestorePreviousContext == false) {
        if (_isDiscardingContext) {
          return;
        }

        _isDiscardingContext = true;

        // This route belongs to the previous user. Keep the transition
        // resolving while it exits. The destination boundary takes over.
        if (context.canPop()) {
          context.pop();
        } else {
          context.go(AppRoutes.home);
        }

        return;
      }

      _finishIfReady();
    });

    ref.listen(hasLocalSessionProvider, (previous, next) {
      // Session and auth transition can settle in either order.
      // Re-check the transition whenever session state changes.
      _finishIfReady();
    });

    final transition = ref.watch(authTransitionStateProvider);

    if (transition.phase == AuthTransitionPhase.resolving) {
      return _AuthTransitionView(message: _transitionMessage(transition));
    }

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
