import 'package:commerce_flutter_storefront/core/network/providers/dio_provider.dart';
import 'package:commerce_flutter_storefront/features/banner/data/datasource/banner_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'banner_api_provider.g.dart';

@riverpod
BannerApi bannerApi(Ref ref) {
  return BannerApi(ref.watch(dioProvider));
}
