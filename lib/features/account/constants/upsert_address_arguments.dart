import 'package:commerce_flutter_storefront/features/auth/constants/login_redirect.dart';

class UpsertAddressArguments {
  const UpsertAddressArguments({this.onCreated, this.loginRedirect});

  final Future<void> Function(int addressId)? onCreated;
  final LoginRedirect? loginRedirect;
}
