import 'package:firebase_core/firebase_core.dart';

import '../error_handler_service.dart';
import '../failures.dart';
import 'firebase_error_codes.dart';
import 'firebase_error_messages.dart';

class FirebaseGeneralErrorHandler implements ErrorHandlerService {
  @override
  Failure handle(Exception exception) {
    return FirebaseFailure(
      message: _getErrorMessage((exception as FirebaseException).code),
    );
  }
}

// function used to get the error message based on firebase error code
String _getErrorMessage(String code) {
  Map<String, String> errorMessages = {
    FirebaseErrorCodes.weakPassword: FirebaseErrorMessages.weakPassword,
    FirebaseErrorCodes.existAccount: FirebaseErrorMessages.existAccount,
    FirebaseErrorCodes.userNotFound: FirebaseErrorMessages.userNotFound,
    FirebaseErrorCodes.wrongPassword: FirebaseErrorMessages.wrongPassword,
    FirebaseErrorCodes.invalidEmail: FirebaseErrorMessages.invalidEmail,
    FirebaseErrorCodes.tooManyRequests: FirebaseErrorMessages.tooManyRequests,
    FirebaseErrorCodes.operationNotAllowed:
        FirebaseErrorMessages.operationNotAllowed,
    FirebaseErrorCodes.userDisabled: FirebaseErrorMessages.userDisabled,
    FirebaseErrorCodes.unexpectedError: FirebaseErrorMessages.unexpectedError,
    FirebaseErrorCodes.invalidVerificationCode:
        FirebaseErrorMessages.invalidVerificationCode,
    FirebaseErrorCodes.invalidVerificationId:
        FirebaseErrorMessages.invalidVerificationId,
    FirebaseErrorCodes.networkConnectionFailed:
        FirebaseErrorMessages.networkConnectionFailed,
    FirebaseErrorCodes.aborted: FirebaseErrorMessages.aborted,
    FirebaseErrorCodes.alreadyExists: FirebaseErrorMessages.alreadyExists,
    FirebaseErrorCodes.cancelled: FirebaseErrorMessages.cancelled,
    FirebaseErrorCodes.dataLoss: FirebaseErrorMessages.dataLoss,
    FirebaseErrorCodes.deadlineExceeded: FirebaseErrorMessages.deadlineExceeded,
    FirebaseErrorCodes.failedPrecondition:
        FirebaseErrorMessages.failedPrecondition,
    FirebaseErrorCodes.internal: FirebaseErrorMessages.internal,
    FirebaseErrorCodes.invalidArgument: FirebaseErrorMessages.invalidArgument,
    FirebaseErrorCodes.notFound: FirebaseErrorMessages.notFound,
    FirebaseErrorCodes.ok: FirebaseErrorMessages.ok,
    FirebaseErrorCodes.outOfRange: FirebaseErrorMessages.outOfRange,
    FirebaseErrorCodes.permissionDenied: FirebaseErrorMessages.permissionDenied,
    FirebaseErrorCodes.resourceExhausted:
        FirebaseErrorMessages.resourceExhausted,
    FirebaseErrorCodes.unauthenticated: FirebaseErrorMessages.unauthenticated,
    FirebaseErrorCodes.unavailable: FirebaseErrorMessages.unavailable,
    FirebaseErrorCodes.unimplemented: FirebaseErrorMessages.unimplemented,
    FirebaseErrorCodes.unknown: FirebaseErrorMessages.unknown,
    FirebaseErrorCodes.unknownError: FirebaseErrorMessages.unknown,
    FirebaseErrorCodes.objectNotFoundError:
        FirebaseErrorMessages.objectNotFoundError,
    FirebaseErrorCodes.bucketNotFoundError:
        FirebaseErrorMessages.bucketNotFoundError,
    FirebaseErrorCodes.projectNotFoundError:
        FirebaseErrorMessages.projectNotFoundError,
    FirebaseErrorCodes.quotaExceededError:
        FirebaseErrorMessages.quotaExceededError,
    FirebaseErrorCodes.unauthenticatedError:
        FirebaseErrorMessages.unauthenticatedError,
    FirebaseErrorCodes.unauthorizedError:
        FirebaseErrorMessages.unauthorizedError,
    FirebaseErrorCodes.retryLimitExceededError:
        FirebaseErrorMessages.retryLimitExceededError,
    FirebaseErrorCodes.invalidChecksumError:
        FirebaseErrorMessages.invalidChecksumError,
    FirebaseErrorCodes.canceledError: FirebaseErrorMessages.canceledError,
    FirebaseErrorCodes.invalidEventNameError:
        FirebaseErrorMessages.invalidEventNameError,
    FirebaseErrorCodes.invalidUrlError: FirebaseErrorMessages.invalidUrlError,
    FirebaseErrorCodes.invalidArgumentError:
        FirebaseErrorMessages.invalidArgumentError,
    FirebaseErrorCodes.noDefaultBucketError:
        FirebaseErrorMessages.noDefaultBucketError,
    FirebaseErrorCodes.cannotSliceBlobError:
        FirebaseErrorMessages.cannotSliceBlobError,
    FirebaseErrorCodes.serverFileWrongSizeError:
        FirebaseErrorMessages.serverFileWrongSizeError,
  };

  return errorMessages[code] ?? FirebaseErrorMessages.unknown;
}
