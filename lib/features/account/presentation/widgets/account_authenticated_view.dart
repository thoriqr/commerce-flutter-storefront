import 'package:commerce_flutter_storefront/features/account/data/models/user_profile.dart';
import 'package:flutter/material.dart';

class AccountAuthenticatedView extends StatelessWidget {
  const AccountAuthenticatedView({super.key, required this.user});

  final UserProfile user;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Hello ${user.displayName}"));
  }
}
