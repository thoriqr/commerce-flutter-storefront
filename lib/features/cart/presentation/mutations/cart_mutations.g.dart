// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_mutations.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CartMutations)
final cartMutationsProvider = CartMutationsProvider._();

final class CartMutationsProvider
    extends $AsyncNotifierProvider<CartMutations, void> {
  CartMutationsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cartMutationsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cartMutationsHash();

  @$internal
  @override
  CartMutations create() => CartMutations();
}

String _$cartMutationsHash() => r'80fd3fe4d2a08f4bdf4211206039d61eaf4b646d';

abstract class _$CartMutations extends $AsyncNotifier<void> {
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
