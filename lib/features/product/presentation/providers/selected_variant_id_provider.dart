import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'selected_variant_id_provider.g.dart';

@riverpod
class SelectedVariantId extends _$SelectedVariantId {
  @override
  int build(int initialVariantId) {
    return initialVariantId;
  }

  void select(int variantId) {
    state = variantId;
  }
}
