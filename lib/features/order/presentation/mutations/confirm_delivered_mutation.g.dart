// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_delivered_mutation.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ConfirmDeliveredMutation)
final confirmDeliveredMutationProvider = ConfirmDeliveredMutationProvider._();

final class ConfirmDeliveredMutationProvider
    extends $AsyncNotifierProvider<ConfirmDeliveredMutation, void> {
  ConfirmDeliveredMutationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'confirmDeliveredMutationProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$confirmDeliveredMutationHash();

  @$internal
  @override
  ConfirmDeliveredMutation create() => ConfirmDeliveredMutation();
}

String _$confirmDeliveredMutationHash() =>
    r'365635a678dc4e3c32d36ac5ab970e95ea94921f';

abstract class _$ConfirmDeliveredMutation extends $AsyncNotifier<void> {
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
