// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_mutations.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(OrderMutations)
final orderMutationsProvider = OrderMutationsProvider._();

final class OrderMutationsProvider
    extends $AsyncNotifierProvider<OrderMutations, void> {
  OrderMutationsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'orderMutationsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$orderMutationsHash();

  @$internal
  @override
  OrderMutations create() => OrderMutations();
}

String _$orderMutationsHash() => r'eb5b15236fc94463e992c8347643cf8a5d6b1a05';

abstract class _$OrderMutations extends $AsyncNotifier<void> {
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
