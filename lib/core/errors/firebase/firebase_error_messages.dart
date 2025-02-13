abstract class FirebaseErrorMessages {
  // AUTH
  static const weakPassword = "The password provided is too weak.";
  static const existAccount = "That email address is already in use.";
  static const invalidEmail = "Your email address is not valid.";
  static const userNotFound = "No user found for that email.";
  static const wrongPassword =
      "Wrong password. Try again or click 'Forgot password' to reset it.";
  static const tooManyRequests = "Too many requests. Try again later.";
  static const operationNotAllowed =
      "Signing in with Email and Password is not enabled.";
  static const userDisabled = "User with this email has been disabled.";
  static const unexpectedError = "An unexcpected Error happened.";
  static const invalidVerificationCode =
      "Invalid verification code, make sure that you are entering the correct code";
  static const invalidVerificationId =
      "The verification ID used to create the phone auth credential is invalid";
  static const networkConnectionFailed =
      "No internet connection please check your connection and try again.";
  // FIRESTORE
  static const aborted =
      "The operation was aborted, typically due to a concurrency issue like transaction aborts, etc.";
  static const alreadyExists =
      "Some document that we attempted to create already exists.";
  static const cancelled =
      "The operation was cancelled (typically by the caller).";
  static const dataLoss = "Unrecoverable data loss or corruption.";
  static const deadlineExceeded =
      "Deadline expired before operation could complete.";
  static const failedPrecondition =
      "Operation was rejected because the system is not in a state required for the operation's execution.";
  static const internal = "Internal errors.";
  static const invalidArgument = "Client specified an invalid argument.";
  static const notFound = "Some requested document was not found.";
  static const ok = "The operation completed successfully.";
  static const outOfRange = "Operation was attempted past the valid range.";
  static const permissionDenied =
      "The caller does not have permission to execute the specified operation.";
  static const resourceExhausted =
      "Some resource has been exhausted, perhaps a per-user quota, or perhaps the entire file system is out of space.";
  static const unauthenticated =
      "The request does not have valid authentication credentials for the operation.";
  static const unavailable = "The service is currently unavailable.";
  static const unimplemented =
      "Operation is not implemented or not supported/enabled.";
  // CLOUD STORAGE
  static const objectNotFoundError =
      "No object exists at the desired reference.";
  static const bucketNotFoundError =
      "No bucket is configured for Cloud Storage.";
  static const projectNotFoundError =
      "No project is configured for Cloud Storage.";
  static const quotaExceededError =
      "Quota on your Cloud Storage bucket has been exceeded. If you’re on the free tier, upgrade to a paid plan. If you’re on a paid plan, reach out to Firebase support.";
  static const unauthenticatedError = "User is unauthenticated.";
  static const unauthorizedError =
      "User is not authorized to perform the desired action.";
  static const retryLimitExceededError =
      "The maximum time limit on an operation has been exceeded.";
  static const invalidChecksumError =
      "The file on the client does not match the checksum of the file received by the server.";
  static const canceledError = "The operation is canceled by the user.";
  static const invalidEventNameError = "Invalid event name provided.";
  static const invalidUrlError = "Invalid URL provided.";
  static const invalidArgumentError = "Invalid argument passed.";
  static const noDefaultBucketError =
      "No default bucket set in your config’s storageBucket property.";
  static const cannotSliceBlobError = "The local file has changed.";
  static const serverFileWrongSizeError =
      "The file on the client does not match the size of the file received by the server.";
// unknown
  static const unknown =
      "Unknown error or an error from a different error domain.";
}
