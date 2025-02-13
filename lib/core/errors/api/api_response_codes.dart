/// A class containing static constants for common API response status codes.
abstract class APIResponseCodes {
  // Success status codes
  static const int success = 200;
  static const int noContent = 201;

  // Failure status codes
  static const int badRequest = 400;
  static const int unauthorized = 401;
  static const int forbidden = 403;
  static const int notFound = 404;
  static const int methodNotAllowed = 405;
  static const int unprocessableEntity = 422;
  static const int tooManyRequests = 429;

  static const int conflict = 409;
  static const int internalServerError = 500;

  // Local status codes
  static const int connectTimeout = -1;
  static const int cancel = -2;
  static const int receiveTimeout = -3;
  static const int sendTimeout = -4;
  static const int cashError = -5;
  static const int noInternetConnection = -6;
  static const int unknown = -7;
}
