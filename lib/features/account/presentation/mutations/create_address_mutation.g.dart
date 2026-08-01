// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_address_mutation.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CreateAddressMutation)
final createAddressMutationProvider = CreateAddressMutationProvider._();

final class CreateAddressMutationProvider
    extends $AsyncNotifierProvider<CreateAddressMutation, void> {
  CreateAddressMutationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'createAddressMutationProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$createAddressMutationHash();

  @$internal
  @override
  CreateAddressMutation create() => CreateAddressMutation();
}

String _$createAddressMutationHash() =>
    r'ac47981cdc08e02697b7de156f3878734b4ae184';

abstract class _$CreateAddressMutation extends $AsyncNotifier<void> {
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
