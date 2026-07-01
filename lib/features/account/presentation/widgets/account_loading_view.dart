import 'package:flutter/material.dart';

class AccountLoadingView extends StatelessWidget {
  const AccountLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
