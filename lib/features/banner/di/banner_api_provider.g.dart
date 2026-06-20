// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_api_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(bannerApi)
final bannerApiProvider = BannerApiProvider._();

final class BannerApiProvider
    extends $FunctionalProvider<BannerApi, BannerApi, BannerApi>
    with $Provider<BannerApi> {
  BannerApiProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'bannerApiProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$bannerApiHash();

  @$internal
  @override
  $ProviderElement<BannerApi> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  BannerApi create(Ref ref) {
    return bannerApi(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BannerApi value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BannerApi>(value),
    );
  }
}

String _$bannerApiHash() => r'7a76faab3aee2da342395e506b4c25188ad5577f';
