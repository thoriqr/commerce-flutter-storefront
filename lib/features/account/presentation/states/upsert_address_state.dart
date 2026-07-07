import 'package:commerce_flutter_storefront/features/shipping/data/models/city.dart';
import 'package:commerce_flutter_storefront/features/shipping/data/models/district.dart';
import 'package:commerce_flutter_storefront/features/shipping/data/models/province.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'upsert_address_state.freezed.dart';

@freezed
abstract class UpsertAddressState with _$UpsertAddressState {
  const factory UpsertAddressState({
    Province? province,
    City? city,
    District? district,

    @Default(false) bool loadingCities,
    @Default(false) bool loadingDistricts,
  }) = _UpsertAddressState;
}
