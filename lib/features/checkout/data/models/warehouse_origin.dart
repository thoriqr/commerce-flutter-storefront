import 'package:freezed_annotation/freezed_annotation.dart';

part 'warehouse_origin.freezed.dart';
part 'warehouse_origin.g.dart';

@freezed
abstract class WarehouseOrigin with _$WarehouseOrigin {
  const factory WarehouseOrigin({
    required String name,
    required String province,
    required String city,
    required String district,
  }) = _WarehouseOrigin;

  factory WarehouseOrigin.fromJson(Map<String, dynamic> json) =>
      _$WarehouseOriginFromJson(json);
}
