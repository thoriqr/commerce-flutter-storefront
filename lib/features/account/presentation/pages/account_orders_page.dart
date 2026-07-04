import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/app_header.dart';
import 'package:flutter/material.dart';

class AccountOrdersPage extends StatelessWidget {
  const AccountOrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppHeader(
        title: 'Orders',
        showCartButton: false,
        onSearch: (_) {},
      ),
      body: const Center(child: Text('Orders')),
    );
  }
}
