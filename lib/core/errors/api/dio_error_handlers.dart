import 'package:new_structure/config/routes/route_manager.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../error_handler_service.dart';
import '../failures.dart';
import 'api_response_codes.dart';

class ConnectionTimeOutErrorHandler implements ErrorHandlerService {
  @override
  Failure handle(Exception exception) {
    return ServerFailure(
      statusCode: APIResponseCodes.connectTimeout,
      message: AppLocalizations.of(RouteManager.currentContext)!.connectTimeout,
    );
  }
}

class SendTimeOutErrorHandler implements ErrorHandlerService {
  @override
  Failure handle(Exception exception) {
    return ServerFailure(
      statusCode: APIResponseCodes.sendTimeout,
      message: AppLocalizations.of(RouteManager.currentContext)!.sendTimeout,
    );
  }
}

class ReceiveTimeOutErrorHandler implements ErrorHandlerService {
  @override
  Failure handle(Exception exception) {
    return ServerFailure(
      statusCode: APIResponseCodes.receiveTimeout,
      message: AppLocalizations.of(RouteManager.currentContext)!.receiveTimeout,
    );
  }
}

class CancelErrorHandler implements ErrorHandlerService {
  @override
  Failure handle(Exception exception) {
    return ServerFailure(
      statusCode: APIResponseCodes.cancel,
      message: AppLocalizations.of(RouteManager.currentContext)!.cancelMessage,
    );
  }
}

class BadCertificateErrorHandler implements ErrorHandlerService {
  @override
  Failure handle(Exception exception) {
    return ServerFailure(
      statusCode: APIResponseCodes.badRequest,
      message: AppLocalizations.of(RouteManager.currentContext)!.badRequest,
    );
  }
}

class UnknownErrorHandler implements ErrorHandlerService {
  @override
  Failure handle(Exception exception) {
    return ServerFailure(
      statusCode: APIResponseCodes.unknown,
      message: AppLocalizations.of(RouteManager.currentContext)!.unknown,
    );
  }
}
