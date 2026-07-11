class AuthConstants {
  const AuthConstants._();

  static const loginPath = '/auth/login';
  static const logoutPath = '/auth/logout';
  static const refreshPath = '/auth/refresh';
  static const changePasswordPath = '/auth/change-password';
  static const setPasswordPath = '/auth/set-password';

  // Remove this once the backend exposes ACCESS_TOKEN_EXPIRED (and other
  // dedicated auth error codes). The interceptor should refresh based on
  // the backend error code instead of endpoint paths.
  static const excludedPaths = {
    loginPath,
    logoutPath,
    refreshPath,
    changePasswordPath,
    setPasswordPath,
  };
}
