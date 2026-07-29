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
class AuthTransitionState extends _$AuthTransitionState {
  @override
  AuthTransition build() {
    return const AuthTransition.idle();
  }

  void startAuthenticating() {
    state = const AuthTransition(phase: AuthTransitionPhase.authenticating);
  }

  void startResolving({required bool canRestorePreviousContext}) {
    state = AuthTransition(
      phase: AuthTransitionPhase.resolving,
      canRestorePreviousContext: canRestorePreviousContext,
    );
  }

  void finish() {
    state = const AuthTransition.idle();
  }
}
