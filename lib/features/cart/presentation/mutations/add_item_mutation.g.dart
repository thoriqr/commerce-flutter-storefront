// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_item_mutation.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AddItemMutation)
final addItemMutationProvider = AddItemMutationProvider._();

final class AddItemMutationProvider
    extends $AsyncNotifierProvider<AddItemMutation, void> {
  AddItemMutationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'addItemMutationProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$addItemMutationHash();

  @$internal
  @override
  AddItemMutation create() => AddItemMutation();
}

String _$addItemMutationHash() => r'2aefa282113ec17eb012dcd0dc32a51bc1806bfb';

abstract class _$AddItemMutation extends $AsyncNotifier<void> {
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
