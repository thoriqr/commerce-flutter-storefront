// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_snap_token_mutation.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CreateSnapTokenMutation)
final createSnapTokenMutationProvider = CreateSnapTokenMutationProvider._();

final class CreateSnapTokenMutationProvider
    extends $AsyncNotifierProvider<CreateSnapTokenMutation, void> {
  CreateSnapTokenMutationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'createSnapTokenMutationProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$createSnapTokenMutationHash();

  @$internal
  @override
  CreateSnapTokenMutation create() => CreateSnapTokenMutation();
}

String _$createSnapTokenMutationHash() =>
    r'c919b6c8b2b7b4533302afd8ac5317397e005372';

abstract class _$CreateSnapTokenMutation extends $AsyncNotifier<void> {
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
