// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_password_mutation.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SetPasswordMutation)
final setPasswordMutationProvider = SetPasswordMutationProvider._();

final class SetPasswordMutationProvider
    extends $AsyncNotifierProvider<SetPasswordMutation, void> {
  SetPasswordMutationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'setPasswordMutationProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$setPasswordMutationHash();

  @$internal
  @override
  SetPasswordMutation create() => SetPasswordMutation();
}

String _$setPasswordMutationHash() =>
    r'761866697871ba95bae96db651ad3f2d224e32b6';

abstract class _$SetPasswordMutation extends $AsyncNotifier<void> {
  FutureOr<void> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<void>, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<void>, void>,
              AsyncValue<void>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
