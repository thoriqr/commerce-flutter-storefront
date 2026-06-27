import '../models/hero_banner.dart';

class HeroBannerMock {
  const HeroBannerMock._();

  static HeroBanner item() {
    return const HeroBanner(
      id: 1,
      title: 'Summer Sale',
      imageKey: 'skeleton',
      targetType: BannerTargetType.collection,
      targetValue: '',
    );
  }

  static List<HeroBanner> items([int count = 3]) {
    return List.generate(count, (_) => item());
  }
}
