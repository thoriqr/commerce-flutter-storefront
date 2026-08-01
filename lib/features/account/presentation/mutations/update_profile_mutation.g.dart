// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile_mutation.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UpdateProfileMutation)
final updateProfileMutationProvider = UpdateProfileMutationProvider._();

final class UpdateProfileMutationProvider
    extends $AsyncNotifierProvider<UpdateProfileMutation, void> {
  UpdateProfileMutationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'updateProfileMutationProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$updateProfileMutationHash();

  @$internal
  @override
  UpdateProfileMutation create() => UpdateProfileMutation();
}

String _$updateProfileMutationHash() =>
    r'edecd3f8905871b32d41150fffa8346b163f4102';

abstract class _$UpdateProfileMutation extends $AsyncNotifier<void> {
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
