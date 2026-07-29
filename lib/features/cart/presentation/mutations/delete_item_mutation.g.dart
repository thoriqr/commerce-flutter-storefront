// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_item_mutation.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DeleteItemMutation)
final deleteItemMutationProvider = DeleteItemMutationProvider._();

final class DeleteItemMutationProvider
    extends $AsyncNotifierProvider<DeleteItemMutation, void> {
  DeleteItemMutationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'deleteItemMutationProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$deleteItemMutationHash();

  @$internal
  @override
  DeleteItemMutation create() => DeleteItemMutation();
}

String _$deleteItemMutationHash() =>
    r'8d926a5059a48910568d6e2a4a9ab0b4d8e3bc49';

abstract class _$DeleteItemMutation extends $AsyncNotifier<void> {
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
