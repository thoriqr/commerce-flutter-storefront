import 'package:commerce_flutter_storefront/core/network/providers/app_dio_provider.dart';
import 'package:commerce_flutter_storefront/features/account/data/datasource/account_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'account_api_provider.g.dart';

@riverpod
AccountApi accountApi(Ref ref) {
  return AccountApi(ref.watch(appDioProvider));
}
