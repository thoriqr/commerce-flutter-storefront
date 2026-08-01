import 'package:commerce_flutter_storefront/features/auth/constants/login_redirect.dart';

class AuthTransitionArguments {
  const AuthTransitionArguments({this.redirect});

  final LoginRedirect? redirect;
}
