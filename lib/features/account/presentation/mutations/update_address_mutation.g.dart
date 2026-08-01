// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_address_mutation.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UpdateAddressMutation)
final updateAddressMutationProvider = UpdateAddressMutationProvider._();

final class UpdateAddressMutationProvider
    extends $AsyncNotifierProvider<UpdateAddressMutation, void> {
  UpdateAddressMutationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'updateAddressMutationProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$updateAddressMutationHash();

  @$internal
  @override
  UpdateAddressMutation create() => UpdateAddressMutation();
}

String _$updateAddressMutationHash() =>
    r'4c1df000c08a0803d33a00d0b3f602878d1a3a4b';

abstract class _$UpdateAddressMutation extends $AsyncNotifier<void> {
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
