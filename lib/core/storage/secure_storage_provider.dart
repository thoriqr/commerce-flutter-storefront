import 'package:commerce_flutter_storefront/core/storage/secure_storage.dart';
import 'package:commerce_flutter_storefront/core/storage/secure_storage_impl.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'secure_storage_provider.g.dart';

@Riverpod(keepAlive: true)
SecureStorage secureStorage(Ref ref) {
  return SecureStorageImpl(const FlutterSecureStorage());
}
