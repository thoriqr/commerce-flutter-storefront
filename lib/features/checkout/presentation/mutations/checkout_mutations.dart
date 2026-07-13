import 'package:commerce_flutter_storefront/features/shared/mixins/async_mutation_mixin.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'checkout_mutations.g.dart';

@riverpod
class CheckoutMutations extends _$CheckoutMutations with AsyncMutationMixin {
  @override
  FutureOr<void> build() {}
}
