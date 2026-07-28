class LoginRedirect {
  const LoginRedirect(this.location, {this.requiresSameUser = false});

  final String location;
  final bool requiresSameUser;
}
