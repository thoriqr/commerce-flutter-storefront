import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_transition_provider.g.dart';

enum AuthTransitionPhase { idle, authenticating, resolving }

class AuthTransition {
  const AuthTransition({required this.phase, this.canRestorePreviousContext});

  const AuthTransition.idle()
    : phase = AuthTransitionPhase.idle,
      canRestorePreviousContext = null;

  final AuthTransitionPhase phase;
  final bool? canRestorePreviousContext;
}

@Riverpod(keepAlive: true)
@Riverpod(keepAlive: true)
class AuthTransitionState extends _$AuthTransitionState {
  @override
  AuthTransition build() {
    debugPrint('[AuthTransition] BUILD -> idle');

    return const AuthTransition.idle();
  }

  void startAuthenticating() {
    debugPrint('[AuthTransition] idle/resolving -> authenticating');

    state = const AuthTransition(phase: AuthTransitionPhase.authenticating);
  }

  void startResolving({required bool canRestorePreviousContext}) {
    debugPrint(
      '[AuthTransition] authenticating -> resolving '
      'canRestore=$canRestorePreviousContext',
    );

    state = AuthTransition(
      phase: AuthTransitionPhase.resolving,
      canRestorePreviousContext: canRestorePreviousContext,
    );
  }

  void finish() {
    debugPrint('[AuthTransition] ${state.phase} -> idle FINISH');

    state = const AuthTransition.idle();
  }
}
