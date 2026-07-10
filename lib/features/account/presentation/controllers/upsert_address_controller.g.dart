// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upsert_address_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UpsertAddressController)
final upsertAddressControllerProvider = UpsertAddressControllerProvider._();

final class UpsertAddressControllerProvider
    extends $NotifierProvider<UpsertAddressController, UpsertAddressState> {
  UpsertAddressControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'upsertAddressControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$upsertAddressControllerHash();

  @$internal
  @override
  UpsertAddressController create() => UpsertAddressController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UpsertAddressState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UpsertAddressState>(value),
    );
  }
}

String _$upsertAddressControllerHash() =>
    r'29ffcf377fd79f4d04f5dac28ee5d6ecd04af30b';

abstract class _$UpsertAddressController extends $Notifier<UpsertAddressState> {
  UpsertAddressState build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<UpsertAddressState, UpsertAddressState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<UpsertAddressState, UpsertAddressState>,
              UpsertAddressState,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
