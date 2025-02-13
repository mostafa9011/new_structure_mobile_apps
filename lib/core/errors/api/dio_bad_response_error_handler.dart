import 'package:dio/dio.dart';

import '../../../config/themes/text_manager.dart';
import '../error_handler_service.dart';
import '../failures.dart';
import 'api_response_codes.dart';

class BadResponseErrorHandler implements ErrorHandlerService {
  @override
  Failure handle(Exception exception) {
    final response = (exception as DioException).response?.data;
    final int? statusCode = response["code"];
    final String statusMessage = response["message"] ?? TextManager.unknown;
    // final Map<String, dynamic>? data = response["data"];

    // if there is no response
    if (statusCode == null) {
      return const ServerFailure(
        message: TextManager.unknown,
        statusCode: APIResponseCodes.unknown,
      );
    }

    switch (statusCode) {
      // Client errors
      case APIResponseCodes.badRequest:
        return ServerFailure(
          statusCode: APIResponseCodes.badRequest,
          message: statusMessage,
        );

      case APIResponseCodes.unprocessableEntity:
        return const ServerFailure(
          statusCode: APIResponseCodes.unprocessableEntity,
          message: TextManager.unknown,
        );

      case APIResponseCodes.unauthorized:
        return ServerFailure(
          statusCode: APIResponseCodes.unauthorized,
          message: statusMessage,
        );

      case APIResponseCodes.forbidden:
        return ServerFailure(
          statusCode: APIResponseCodes.forbidden,
          message: statusMessage,
        );

      case APIResponseCodes.notFound:
        return ServerFailure(
          statusCode: APIResponseCodes.notFound,
          message: statusMessage,
        );

      // Default case for unknown status codes
      default:
        return ServerFailure(
          statusCode: APIResponseCodes.unknown,
          message: statusMessage,
        );
    }
  }
}
