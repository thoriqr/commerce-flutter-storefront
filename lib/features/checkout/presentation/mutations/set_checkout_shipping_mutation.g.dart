// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_checkout_shipping_mutation.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SetCheckoutShippingMutation)
final setCheckoutShippingMutationProvider =
    SetCheckoutShippingMutationProvider._();

final class SetCheckoutShippingMutationProvider
    extends $AsyncNotifierProvider<SetCheckoutShippingMutation, void> {
  SetCheckoutShippingMutationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'setCheckoutShippingMutationProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$setCheckoutShippingMutationHash();

  @$internal
  @override
  SetCheckoutShippingMutation create() => SetCheckoutShippingMutation();
}

String _$setCheckoutShippingMutationHash() =>
    r'167ea5d19b7aa8afb94beab4c8a541e739937ba6';

abstract class _$SetCheckoutShippingMutation extends $AsyncNotifier<void> {
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
