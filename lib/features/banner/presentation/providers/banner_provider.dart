import 'package:commerce_flutter_storefront/features/banner/data/models/hero_banner.dart';
import 'package:commerce_flutter_storefront/features/banner/di/banner_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'banner_provider.g.dart';

@riverpod
Future<List<HeroBanner>> homepageHero(Ref ref) {
  return ref.read(bannerRepositoryProvider).getHomepageHero();
}
