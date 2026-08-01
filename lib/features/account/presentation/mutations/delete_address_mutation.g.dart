// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_address_mutation.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DeleteAddressMutation)
final deleteAddressMutationProvider = DeleteAddressMutationProvider._();

final class DeleteAddressMutationProvider
    extends $AsyncNotifierProvider<DeleteAddressMutation, void> {
  DeleteAddressMutationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'deleteAddressMutationProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$deleteAddressMutationHash();

  @$internal
  @override
  DeleteAddressMutation create() => DeleteAddressMutation();
}

String _$deleteAddressMutationHash() =>
    r'743dac75921ba2f6048f526b74f41a24bfae922d';

abstract class _$DeleteAddressMutation extends $AsyncNotifier<void> {
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
