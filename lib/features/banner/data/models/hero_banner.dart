import 'package:freezed_annotation/freezed_annotation.dart';

part 'hero_banner.freezed.dart';

enum BannerTargetType { collection, category }

@freezed
abstract class HeroBanner with _$HeroBanner {
  const factory HeroBanner({
    required int id,
    required String title,
    required String imageKey,
    required BannerTargetType targetType,
    required String targetValue,
  }) = _HeroBanner;

  factory HeroBanner.fromJson(Map<String, dynamic> json) {
    final url = json["url"] as String;
    final segments = url
        .split("/")
        .where((segment) => segment.isNotEmpty)
        .toList();

    return HeroBanner(
      id: json['id'] as int,
      title: json['title'] as String,
      imageKey: json['imageKey'] as String,
      targetType: BannerTargetType.values.byName(segments.first),
      targetValue: segments.skip(1).join('/'),
    );
  }
}
