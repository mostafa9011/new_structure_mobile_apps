import '../../../config/themes/text_manager.dart';
import '../error_handler_service.dart';
import '../failures.dart';
import 'api_response_codes.dart';

class ConnectionTimeOutErrorHandler implements ErrorHandlerService {
  @override
  Failure handle(Exception exception) {
    return const ServerFailure(
      statusCode: APIResponseCodes.connectTimeout,
      message: TextManager.connectTimeout,
    );
  }
}

class SendTimeOutErrorHandler implements ErrorHandlerService {
  @override
  Failure handle(Exception exception) {
    return const ServerFailure(
      statusCode: APIResponseCodes.sendTimeout,
      message: TextManager.sendTimeout,
    );
  }
}

class ReceiveTimeOutErrorHandler implements ErrorHandlerService {
  @override
  Failure handle(Exception exception) {
    return const ServerFailure(
      statusCode: APIResponseCodes.receiveTimeout,
      message: TextManager.receiveTimeout,
    );
  }
}

class CancelErrorHandler implements ErrorHandlerService {
  @override
  Failure handle(Exception exception) {
    return const ServerFailure(
      statusCode: APIResponseCodes.cancel,
      message: TextManager.cancelMessage,
    );
  }
}

class BadCertificateErrorHandler implements ErrorHandlerService {
  @override
  Failure handle(Exception exception) {
    return const ServerFailure(
      statusCode: APIResponseCodes.badRequest,
      message: TextManager.badRequest,
    );
  }
}

class UnknownErrorHandler implements ErrorHandlerService {
  @override
  Failure handle(Exception exception) {
    return const ServerFailure(
      statusCode: APIResponseCodes.unknown,
      message: TextManager.unknown,
    );
  }
}
