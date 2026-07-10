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

    state = state.copyWith(restoringSelection: true);

    try {
      final provinceId = int.parse(address.shippingProvinceId);
      final cityId = int.parse(address.shippingCityId);
      final districtId = int.parse(address.shippingDistrictId);

      final provinces = await ref.read(provincesProvider.future);

      final province = provinces.firstWhere((e) => e.id == provinceId);

      state = state.copyWith(province: province);

      final cities = await ref.read(citiesProvider(province.id).future);

      final city = cities.firstWhere((e) => e.id == cityId);

      state = state.copyWith(city: city);

      final districts = await ref.read(districtsProvider(city.id).future);

      final district = districts.firstWhere((e) => e.id == districtId);

      state = state.copyWith(district: district);
    } finally {
      state = state.copyWith(restoringSelection: false);
    }
  }

  Future<void> selectProvince(Province province) async {
    if (state.province?.id == province.id) {
      return;
    }

    state = state.copyWith(province: province, city: null, district: null);
  }

  void selectCity(City city) {
    if (state.city?.id == city.id) {
      return;
    }

    state = state.copyWith(city: city, district: null);
  }

  void selectDistrict(District district) {
    state = state.copyWith(district: district);
  }
}
