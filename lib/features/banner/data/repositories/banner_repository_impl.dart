import 'package:commerce_flutter_storefront/features/banner/data/datasource/banner_api.dart';
import 'package:commerce_flutter_storefront/features/banner/data/models/hero_banner.dart';
import 'package:commerce_flutter_storefront/features/banner/domain/repositories/banner_repository.dart';

class BannerRepositoryImpl implements BannerRepository {
  const BannerRepositoryImpl(this._api);

  final BannerApi _api;

  @override
  Future<List<HeroBanner>> getHomepageHero() async {
    final res = await _api.getHomepageHero();

    return res.data;
  }
}
