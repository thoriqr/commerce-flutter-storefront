// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_mutation.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ChangePasswordMutation)
final changePasswordMutationProvider = ChangePasswordMutationProvider._();

final class ChangePasswordMutationProvider
    extends $AsyncNotifierProvider<ChangePasswordMutation, void> {
  ChangePasswordMutationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'changePasswordMutationProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$changePasswordMutationHash();

  @$internal
  @override
  ChangePasswordMutation create() => ChangePasswordMutation();
}

String _$changePasswordMutationHash() =>
    r'7eaf60c3dc65aa25be45cf657fc3fa29efc96085';

abstract class _$ChangePasswordMutation extends $AsyncNotifier<void> {
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
