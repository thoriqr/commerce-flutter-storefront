import 'package:commerce_flutter_storefront/features/collection/providers/collection_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MaterialApp(home: HomePage())));
}

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final collections = ref.watch(collectionPreviewProvider);

    return Scaffold(
      body: collections.when(
        data: (collection) => ListView.builder(
          itemCount: collection.length,
          itemBuilder: (_, index) {
            return Text(collection[index].name);
          },
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) {
          return Text(error.toString());
        },
      ),
    );
  }
}
