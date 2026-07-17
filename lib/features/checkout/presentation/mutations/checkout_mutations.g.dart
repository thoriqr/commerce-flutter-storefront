// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_mutations.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CheckoutMutations)
final checkoutMutationsProvider = CheckoutMutationsProvider._();

final class CheckoutMutationsProvider
    extends $AsyncNotifierProvider<CheckoutMutations, void> {
  CheckoutMutationsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'checkoutMutationsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$checkoutMutationsHash();

  @$internal
  @override
  CheckoutMutations create() => CheckoutMutations();
}

String _$checkoutMutationsHash() => r'e6c8fcf32901aeeab0cf7659ca08765d0ee4fc0c';

abstract class _$CheckoutMutations extends $AsyncNotifier<void> {
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
