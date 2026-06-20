import 'package:commerce_flutter_storefront/features/banner/data/repositories/banner_repository_impl.dart';
import 'package:commerce_flutter_storefront/features/banner/di/banner_api_provider.dart';
import 'package:commerce_flutter_storefront/features/banner/domain/repositories/banner_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'banner_repository_provider.g.dart';

@riverpod
BannerRepository bannerRepository(Ref ref) {
  return BannerRepositoryImpl(ref.watch(bannerApiProvider));
}
