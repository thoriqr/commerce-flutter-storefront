import 'package:commerce_flutter_storefront/features/account/data/repositories/account_repository_impl.dart';
import 'package:commerce_flutter_storefront/features/account/di/account_api_provider.dart';
import 'package:commerce_flutter_storefront/features/account/domain/repositories/account_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'account_repository_provider.g.dart';

@riverpod
AccountRepository accountRepository(Ref ref) {
  return AccountRepositoryImpl(ref.watch(accountApiProvider));
}
