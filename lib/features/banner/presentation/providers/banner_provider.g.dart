// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(homepageHero)
final homepageHeroProvider = HomepageHeroProvider._();

final class HomepageHeroProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<HeroBanner>>,
          List<HeroBanner>,
          FutureOr<List<HeroBanner>>
        >
    with $FutureModifier<List<HeroBanner>>, $FutureProvider<List<HeroBanner>> {
  HomepageHeroProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'homepageHeroProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$homepageHeroHash();

  @$internal
  @override
  $FutureProviderElement<List<HeroBanner>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<HeroBanner>> create(Ref ref) {
    return homepageHero(ref);
  }
}

String _$homepageHeroHash() => r'08a3903d565ed48c24caf7708c6f00226eddc3ea';
