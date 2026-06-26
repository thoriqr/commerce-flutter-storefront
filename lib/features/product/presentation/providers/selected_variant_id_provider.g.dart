// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_variant_id_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SelectedVariantId)
final selectedVariantIdProvider = SelectedVariantIdFamily._();

final class SelectedVariantIdProvider
    extends $NotifierProvider<SelectedVariantId, int> {
  SelectedVariantIdProvider._({
    required SelectedVariantIdFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'selectedVariantIdProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$selectedVariantIdHash();

  @override
  String toString() {
    return r'selectedVariantIdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  SelectedVariantId create() => SelectedVariantId();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is SelectedVariantIdProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$selectedVariantIdHash() => r'c3d5720ebba4e01e6282046f4aba7d8c87cdc9ea';

final class SelectedVariantIdFamily extends $Family
    with $ClassFamilyOverride<SelectedVariantId, int, int, int, int> {
  SelectedVariantIdFamily._()
    : super(
        retry: null,
        name: r'selectedVariantIdProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SelectedVariantIdProvider call(int initialVariantId) =>
      SelectedVariantIdProvider._(argument: initialVariantId, from: this);

  @override
  String toString() => r'selectedVariantIdProvider';
}

abstract class _$SelectedVariantId extends $Notifier<int> {
  late final _$args = ref.$arg as int;
  int get initialVariantId => _$args;

  int build(int initialVariantId);
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, () => build(_$args));
  }
}
