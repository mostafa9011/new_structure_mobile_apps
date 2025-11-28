import '../../../i18n/strings.g.dart';
import '../error_handler_service.dart';
import '../failures.dart';
import 'api_response_codes.dart';

class ConnectionTimeOutErrorHandler implements ErrorHandlerService {
  @override
  Failure handle(Exception exception) {
    return ServerFailure(
      statusCode: APIResponseCodes.connectTimeout,
      message: t.connectTimeout,
    );
  }
}

class SendTimeOutErrorHandler implements ErrorHandlerService {
  @override
  Failure handle(Exception exception) {
    return ServerFailure(
      statusCode: APIResponseCodes.sendTimeout,
      message: t.sendTimeout,
    );
  }
}

class ReceiveTimeOutErrorHandler implements ErrorHandlerService {
  @override
  Failure handle(Exception exception) {
    return ServerFailure(
      statusCode: APIResponseCodes.receiveTimeout,
      message: t.receiveTimeout,
    );
  }
}

class CancelErrorHandler implements ErrorHandlerService {
  @override
  Failure handle(Exception exception) {
    return ServerFailure(
      statusCode: APIResponseCodes.cancel,
      message: t.cancelMessage,
    );
  }
}

class BadCertificateErrorHandler implements ErrorHandlerService {
  @override
  Failure handle(Exception exception) {
    return ServerFailure(
      statusCode: APIResponseCodes.badRequest,
      message: t.badRequest,
    );
  }
}

class UnknownErrorHandler implements ErrorHandlerService {
  @override
  Failure handle(Exception exception) {
    return ServerFailure(
      statusCode: APIResponseCodes.unknown,
      message: t.unknown,
    );
  }
}
