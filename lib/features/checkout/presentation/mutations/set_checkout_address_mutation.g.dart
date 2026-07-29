// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_checkout_address_mutation.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SetCheckoutAddressMutation)
final setCheckoutAddressMutationProvider =
    SetCheckoutAddressMutationProvider._();

final class SetCheckoutAddressMutationProvider
    extends $AsyncNotifierProvider<SetCheckoutAddressMutation, void> {
  SetCheckoutAddressMutationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'setCheckoutAddressMutationProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$setCheckoutAddressMutationHash();

  @$internal
  @override
  SetCheckoutAddressMutation create() => SetCheckoutAddressMutation();
}

String _$setCheckoutAddressMutationHash() =>
    r'1a56ce4d08432f67223ab3623d57e8f2085f0665';

abstract class _$SetCheckoutAddressMutation extends $AsyncNotifier<void> {
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
