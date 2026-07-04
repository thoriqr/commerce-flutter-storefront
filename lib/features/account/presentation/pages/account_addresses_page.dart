import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/app_header.dart';
import 'package:flutter/material.dart';

class AccountAddressesPage extends StatelessWidget {
  const AccountAddressesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppHeader(
        title: 'Addresses',
        showCartButton: false,
        onSearch: (_) {},
      ),
      body: const Center(child: Text('Addresses')),
    );
  }
}
