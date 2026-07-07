import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

abstract final class AccountRoutes {
  static const profile = '/account/profile';

  static const addresses = '/account/addresses';

  static const addressNew = '/account/address/new';

  static const address = '/account/address/:id';

  static const orders = '/account/orders';

  static const security = '/account/security';

  static void pushNewAddress(BuildContext context) {
    context.push(addressNew);
  }

  static void pushEditAddress(BuildContext context, int id) {
    context.push('/account/address/$id');
  }
}
