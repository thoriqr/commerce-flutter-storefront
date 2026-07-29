// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_item_mutation.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UpdateItemMutation)
final updateItemMutationProvider = UpdateItemMutationProvider._();

final class UpdateItemMutationProvider
    extends $AsyncNotifierProvider<UpdateItemMutation, void> {
  UpdateItemMutationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'updateItemMutationProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$updateItemMutationHash();

  @$internal
  @override
  UpdateItemMutation create() => UpdateItemMutation();
}

String _$updateItemMutationHash() =>
    r'b2f6e59081b7c92191fbdd2c88f1c4dc3068db35';

abstract class _$UpdateItemMutation extends $AsyncNotifier<void> {
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
