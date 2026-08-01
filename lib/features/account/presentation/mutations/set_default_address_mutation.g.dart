// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_default_address_mutation.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SetDefaultAddressMutation)
final setDefaultAddressMutationProvider = SetDefaultAddressMutationProvider._();

final class SetDefaultAddressMutationProvider
    extends $AsyncNotifierProvider<SetDefaultAddressMutation, void> {
  SetDefaultAddressMutationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'setDefaultAddressMutationProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$setDefaultAddressMutationHash();

  @$internal
  @override
  SetDefaultAddressMutation create() => SetDefaultAddressMutation();
}

String _$setDefaultAddressMutationHash() =>
    r'e7ec687a61c205f9a29b4193d4644dd040f58a86';

abstract class _$SetDefaultAddressMutation extends $AsyncNotifier<void> {
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
