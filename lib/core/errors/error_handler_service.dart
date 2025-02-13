import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';

import 'error_handler_factories.dart';
import 'failures.dart';

class ErrorHandlerService {
  Failure handle(Exception exception) {
    /// Get factory exception type
    /// return dio error handler factory , firebase error handler factory ...
    final exceptionFactory = ErrorHandlerAbstractFactory.getFactory(exception);

    /// Get the instance of the error handler
    /// and return the final handler that return the failure
    /// e.g. if the exception is DioException,and the dio exception type is bad response , BadResponseErrorHandler will be returned
    final handler = exceptionFactory.getInstance(exception);

    // Handle the exception and return the failure
    final failure = handler.handle(exception);

    // Return the failure
    return failure;
  }
}

/// This class is responsible for returning instance
/// from the right error handler factory (abstract factory)
class ErrorHandlerAbstractFactory {
  // method to get the right factory
  static ErrorHandlerFactory getFactory(Exception exception) {
    if (exception is DioException) {
      return DioErrorHandlerFactory();
    }
    if (exception is FirebaseException) {
      return FirebaseErrorHandlerFactory();
    }
    return DioErrorHandlerFactory();
  }
}
