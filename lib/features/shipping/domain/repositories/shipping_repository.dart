import 'package:commerce_flutter_storefront/features/shipping/data/models/city.dart';
import 'package:commerce_flutter_storefront/features/shipping/data/models/district.dart';
import 'package:commerce_flutter_storefront/features/shipping/data/models/province.dart';

abstract interface class ShippingRepository {
  Future<List<Province>> getProvinces();

  Future<List<City>> getCities(int provinceId);

  Future<List<District>> getDistricts(int cityId);
}
