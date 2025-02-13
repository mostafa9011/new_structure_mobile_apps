abstract class FirebaseErrorCodes {
  // AUTH
  static const weakPassword = "weak-password";
  static const existAccount = "account-exists-with-different-credential";
  static const userNotFound = "user-not-found";
  static const wrongPassword = "wrong-password";
  static const invalidEmail = "invalid-email";
  static const tooManyRequests = "too-many-requests";
  static const operationNotAllowed = "operation-not-allowed";
  static const userDisabled = "user_disabled";
  static const emailIsUsed = "email-already-in-use";
  static const invalidVerificationCode = "invalid-verification-code";
  static const invalidVerificationId = "invalid-verification-id";
  static const unexpectedError = "unexpected_error";
  static const networkConnectionFailed = "network-request-failed";
  // Firestore
  static const aborted = "aborted";
  static const alreadyExists = "already-exists";
  static const cancelled = "cancelled";
  static const dataLoss = "data-loss";
  static const deadlineExceeded = "deadline-exceeded";
  static const failedPrecondition = "failed-precondition";
  static const internal = "internal";
  static const invalidArgument = "invalid-argument";
  static const notFound = "not-found";
  static const ok = "ok";
  static const outOfRange = "out-of-range";
  static const permissionDenied = "permission-denied";
  static const resourceExhausted = "resource-exhausted";
  static const unauthenticated = "unauthenticated";
  static const unavailable = "unavailable";
  static const unimplemented = "unimplemented";
  static const unknown = "unknown";
  // CLOUD STORAGE
  static const unknownError = "unknown-error";
  static const objectNotFoundError = "object-not-found-error";
  static const bucketNotFoundError = "bucket-not-found-error";
  static const projectNotFoundError = "project-not-found-error";
  static const quotaExceededError = "quota-exceeded-error";
  static const unauthenticatedError = "unauthenticated-error";
  static const unauthorizedError = "unauthorized-error";
  static const retryLimitExceededError = "retry-limit-exceeded-error";
  static const invalidChecksumError = "invalid-checksum-error";
  static const canceledError = "canceled-error";
  static const invalidEventNameError = "invalid-event-name-error";
  static const invalidUrlError = "invalid-url-error";
  static const invalidArgumentError = "invalid-argument-error";
  static const noDefaultBucketError = "no-default-bucket-error";
  static const cannotSliceBlobError = "cannot-slice-blob-error";
  static const serverFileWrongSizeError = "server-file-wrong-size-error";
}
