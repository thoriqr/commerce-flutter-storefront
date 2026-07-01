import 'package:commerce_flutter_storefront/core/storage/secure_storage_provider.dart';
import 'package:commerce_flutter_storefront/features/auth/data/repositories/refresh_repository_impl.dart';
import 'package:commerce_flutter_storefront/features/auth/di/refresh_api_provider.dart';
import 'package:commerce_flutter_storefront/features/auth/domain/repositories/refresh_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'refresh_repository_provider.g.dart';

@riverpod
RefreshRepository refreshRepository(Ref ref) {
  return RefreshRepositoryImpl(
    ref.watch(refreshApiProvider),
    ref.watch(secureStorageProvider),
  );
}
