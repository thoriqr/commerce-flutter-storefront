import 'package:commerce_flutter_storefront/features/shipping/data/models/city.dart';
import 'package:commerce_flutter_storefront/features/shipping/data/models/district.dart';
import 'package:commerce_flutter_storefront/features/shipping/data/models/province.dart';
import 'package:commerce_flutter_storefront/features/shipping/di/shipping_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'shipping_provider.g.dart';

@riverpod
Future<List<Province>> provinces(Ref ref) {
  return ref.read(shippingRepositoryProvider).getProvinces();
}

@riverpod
Future<List<City>> cities(Ref ref, int provinceId) {
  return ref.read(shippingRepositoryProvider).getCities(provinceId);
}

@riverpod
Future<List<District>> districts(Ref ref, int cityId) {
  return ref.read(shippingRepositoryProvider).getDistricts(cityId);
}
