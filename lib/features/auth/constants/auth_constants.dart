class AuthConstants {
  const AuthConstants._();

  static const loginPath = '/auth/login';
  static const logoutPath = '/auth/logout';
  static const refreshPath = '/auth/refresh';

  static const excludedPaths = {loginPath, logoutPath, refreshPath};
}
