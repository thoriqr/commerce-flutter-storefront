import 'package:commerce_flutter_storefront/core/auth/token_manager.dart';
import 'package:commerce_flutter_storefront/core/auth/token_manager_impl.dart';
import 'package:commerce_flutter_storefront/core/storage/secure_storage_provider.dart';
import 'package:commerce_flutter_storefront/features/auth/di/refresh_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'token_manager_provider.g.dart';

@Riverpod(keepAlive: true)
TokenManager tokenManager(Ref ref) {
  return TokenManagerImpl(
    ref.watch(secureStorageProvider),
    ref.watch(refreshRepositoryProvider),
  );
}
