import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_transition_provider.g.dart';

enum AuthTransitionPhase { idle, resolving }

class AuthTransition {
  const AuthTransition({required this.phase, this.canRestorePreviousContext});

  const AuthTransition.idle()
    : phase = AuthTransitionPhase.idle,
      canRestorePreviousContext = null;

  final AuthTransitionPhase phase;

  final bool? canRestorePreviousContext;

  bool get isResolving => phase == AuthTransitionPhase.resolving;
}

@Riverpod(keepAlive: true)
class AuthTransitionState extends _$AuthTransitionState {
  @override
  AuthTransition build() {
    return const AuthTransition.idle();
  }

  void start({required bool canRestorePreviousContext}) {
    state = AuthTransition(
      phase: AuthTransitionPhase.resolving,
      canRestorePreviousContext: canRestorePreviousContext,
    );
  }

  void finish() {
    state = const AuthTransition.idle();
  }
}
