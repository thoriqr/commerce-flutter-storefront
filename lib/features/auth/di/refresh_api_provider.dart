import 'package:commerce_flutter_storefront/core/network/providers/refresh_dio_provider.dart';
import 'package:commerce_flutter_storefront/features/auth/data/datasource/refresh_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'refresh_api_provider.g.dart';

@riverpod
RefreshApi refreshApi(Ref ref) {
  return RefreshApi(ref.watch(refreshDioProvider));
}
