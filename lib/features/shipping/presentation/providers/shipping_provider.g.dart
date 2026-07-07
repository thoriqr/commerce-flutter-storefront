// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(provinces)
final provincesProvider = ProvincesProvider._();

final class ProvincesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Province>>,
          List<Province>,
          FutureOr<List<Province>>
        >
    with $FutureModifier<List<Province>>, $FutureProvider<List<Province>> {
  ProvincesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'provincesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$provincesHash();

  @$internal
  @override
  $FutureProviderElement<List<Province>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Province>> create(Ref ref) {
    return provinces(ref);
  }
}

String _$provincesHash() => r'402439de2649a8f23f111d5d44bc57ac490392ef';

@ProviderFor(cities)
final citiesProvider = CitiesFamily._();

final class CitiesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<City>>,
          List<City>,
          FutureOr<List<City>>
        >
    with $FutureModifier<List<City>>, $FutureProvider<List<City>> {
  CitiesProvider._({
    required CitiesFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'citiesProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$citiesHash();

  @override
  String toString() {
    return r'citiesProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<City>> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<City>> create(Ref ref) {
    final argument = this.argument as int;
    return cities(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is CitiesProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$citiesHash() => r'3e28c4b3974da10257462bc82cc3c587f367d735';

final class CitiesFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<City>>, int> {
  CitiesFamily._()
    : super(
        retry: null,
        name: r'citiesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  CitiesProvider call(int provinceId) =>
      CitiesProvider._(argument: provinceId, from: this);

  @override
  String toString() => r'citiesProvider';
}

@ProviderFor(districts)
final districtsProvider = DistrictsFamily._();

final class DistrictsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<District>>,
          List<District>,
          FutureOr<List<District>>
        >
    with $FutureModifier<List<District>>, $FutureProvider<List<District>> {
  DistrictsProvider._({
    required DistrictsFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'districtsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$districtsHash();

  @override
  String toString() {
    return r'districtsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<District>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<District>> create(Ref ref) {
    final argument = this.argument as int;
    return districts(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is DistrictsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$districtsHash() => r'08cc229f9ed7f3c80e7f3e3fe36e4378d9e9a86d';

final class DistrictsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<District>>, int> {
  DistrictsFamily._()
    : super(
        retry: null,
        name: r'districtsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  DistrictsProvider call(int cityId) =>
      DistrictsProvider._(argument: cityId, from: this);

  @override
  String toString() => r'districtsProvider';
}
