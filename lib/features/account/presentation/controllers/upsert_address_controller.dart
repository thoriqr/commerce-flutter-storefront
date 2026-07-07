import 'dart:async';

import 'package:commerce_flutter_storefront/features/account/data/models/user_address_detail.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/states/upsert_address_state.dart';
import 'package:commerce_flutter_storefront/features/shipping/data/models/city.dart';
import 'package:commerce_flutter_storefront/features/shipping/data/models/district.dart';
import 'package:commerce_flutter_storefront/features/shipping/data/models/province.dart';
import 'package:commerce_flutter_storefront/features/shipping/presentation/providers/shipping_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'upsert_address_controller.g.dart';

@riverpod
class UpsertAddressController extends _$UpsertAddressController {
  @override
  UpsertAddressState build() {
    return const UpsertAddressState();
  }

  Future<void> initialize(UserAddressDetail? address) async {
    if (address == null) {
      return;
    }

    final provinceId = int.parse(address.shippingProvinceId);
    final cityId = int.parse(address.shippingCityId);
    final districtId = int.parse(address.shippingDistrictId);

    final provinces = await ref.read(provincesProvider.future);

    final province = provinces.firstWhere((e) => e.id == provinceId);

    final cities = await ref.read(citiesProvider(province.id).future);

    final city = cities.firstWhere((e) => e.id == cityId);

    final districts = await ref.read(districtsProvider(city.id).future);

    final district = districts.firstWhere((e) => e.id == districtId);

    state = state.copyWith(province: province, city: city, district: district);
  }

  Future<void> selectProvince(Province province) async {
    if (state.province?.id == province.id) {
      return;
    }

    state = state.copyWith(
      province: province,
      city: null,
      district: null,
      loadingCities: true,
      loadingDistricts: false,
    );

    try {
      await ref.read(citiesProvider(province.id).future);
    } finally {
      state = state.copyWith(loadingCities: false);
    }
  }

  Future<void> selectCity(City city) async {
    if (state.city?.id == city.id) {
      return;
    }

    state = state.copyWith(city: city, district: null, loadingDistricts: true);

    try {
      await ref.read(districtsProvider(city.id).future);
    } finally {
      state = state.copyWith(loadingDistricts: false);
    }
  }

  void selectDistrict(District district) {
    state = state.copyWith(district: district);
  }
}
