// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_order_mutation.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CancelOrderMutation)
final cancelOrderMutationProvider = CancelOrderMutationProvider._();

final class CancelOrderMutationProvider
    extends $AsyncNotifierProvider<CancelOrderMutation, void> {
  CancelOrderMutationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cancelOrderMutationProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cancelOrderMutationHash();

  @$internal
  @override
  CancelOrderMutation create() => CancelOrderMutation();
}

String _$cancelOrderMutationHash() =>
    r'3ffe4347ecd71cc46a6325c1c99895e67321ab38';

abstract class _$CancelOrderMutation extends $AsyncNotifier<void> {
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
