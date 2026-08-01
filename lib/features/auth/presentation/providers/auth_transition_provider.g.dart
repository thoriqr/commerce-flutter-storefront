// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_transition_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AuthTransitionState)
final authTransitionStateProvider = AuthTransitionStateProvider._();

final class AuthTransitionStateProvider
    extends $NotifierProvider<AuthTransitionState, AuthTransition> {
  AuthTransitionStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authTransitionStateProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authTransitionStateHash();

  @$internal
  @override
  AuthTransitionState create() => AuthTransitionState();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthTransition value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthTransition>(value),
    );
  }
}

String _$authTransitionStateHash() =>
    r'189b4846932b2bc85e61e40a121cb139d5eeccf3';

abstract class _$AuthTransitionState extends $Notifier<AuthTransition> {
  AuthTransition build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AuthTransition, AuthTransition>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AuthTransition, AuthTransition>,
              AuthTransition,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
