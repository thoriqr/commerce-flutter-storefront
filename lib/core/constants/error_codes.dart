abstract final class ErrorCodes {
  // Generic
  static const badRequest = "BAD_REQUEST";
  static const validationError = "VALIDATION_ERROR";
  static const notFound = "NOT_FOUND";
  static const unauthorized = "UNAUTHORIZED";

  // Access token
  static const accessTokenExpired = "ACCESS_TOKEN_EXPIRED";
  static const invalidAccessToken = "INVALID_ACCESS_TOKEN";

  // Refresh token
  static const refreshTokenExpired = "REFRESH_TOKEN_EXPIRED";
  static const invalidRefreshToken = "INVALID_REFRESH_TOKEN";
  static const refreshTokenReuse = "REFRESH_TOKEN_REUSE";
  static const refreshTokenMissing = "REFRESH_TOKEN_MISSING";

  // Session
  static const sessionRevoked = "SESSION_REVOKED";

  // Application
  static const sessionExpired = "SESSION_EXPIRED";
}
