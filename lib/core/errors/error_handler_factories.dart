import 'package:dio/dio.dart';

import 'api/dio_bad_response_error_handler.dart';
import 'api/dio_error_handlers.dart';
import 'error_handler_service.dart';
import 'firebase/firebase_general_error_handler.dart';

// This class is used as abstract factory
/// parent of dio error handler and firebase error handler
abstract class ErrorHandlerFactory {
  // method to get the instance of the error handler
  ErrorHandlerService getInstance(Exception exception);
}

/// for the correct dio exception handler based on the type
class DioErrorHandlerFactory implements ErrorHandlerFactory {
  @override
  ErrorHandlerService getInstance(Exception exception) {
    switch ((exception as DioException).type) {
      case DioExceptionType.connectionTimeout:
        return ConnectionTimeOutErrorHandler();
      case DioExceptionType.sendTimeout:
        return SendTimeOutErrorHandler();
      case DioExceptionType.receiveTimeout:
        return ReceiveTimeOutErrorHandler();
      case DioExceptionType.badResponse:
        return BadResponseErrorHandler();
      case DioExceptionType.cancel:
        return CancelErrorHandler();
      case DioExceptionType.badCertificate:
        return BadCertificateErrorHandler();
      case DioExceptionType.connectionError:
        return ConnectionTimeOutErrorHandler();
      case DioExceptionType.unknown:
        return UnknownErrorHandler();
    }
  }
}

class FirebaseErrorHandlerFactory implements ErrorHandlerFactory {
  @override
  ErrorHandlerService getInstance(Exception exception) {
    return FirebaseGeneralErrorHandler();
    // switch (exception as FirebaseException) {
    //   default: return FirebaseGeneralErrorHandler();
    // }
  }
}
