import 'package:commerce_flutter_storefront/core/network/api_response_extension.dart';
import 'package:commerce_flutter_storefront/features/shipping/data/datasource/shipping_api.dart';
import 'package:commerce_flutter_storefront/features/shipping/data/models/city.dart';
import 'package:commerce_flutter_storefront/features/shipping/data/models/district.dart';
import 'package:commerce_flutter_storefront/features/shipping/data/models/province.dart';
import 'package:commerce_flutter_storefront/features/shipping/domain/repositories/shipping_repository.dart';

class ShippingRepositoryImpl implements ShippingRepository {
  const ShippingRepositoryImpl(this._api);

  final ShippingApi _api;

  @override
  Future<List<Province>> getProvinces() async {
    return await _api.getProvinces().unwrap();
  }

  @override
  Future<List<City>> getCities(int provinceId) async {
    return await _api.getCities(provinceId).unwrap();
  }

  @override
  Future<List<District>> getDistricts(int cityId) async {
    return await _api.getDistricts(cityId).unwrap();
  }
}
