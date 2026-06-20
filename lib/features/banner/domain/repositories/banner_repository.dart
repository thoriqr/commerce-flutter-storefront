import 'package:commerce_flutter_storefront/features/banner/data/models/hero_banner.dart';

abstract interface class BannerRepository {
  Future<List<HeroBanner>> getHomepageHero();
}
