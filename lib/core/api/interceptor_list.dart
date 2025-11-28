import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../config/routes/page_name.dart';
import '../config/routes/route_manager.dart';
import '../errors/api/api_response_codes.dart';
import '../helpers/cache_helper.dart';
import '../utils/functions/kprint.dart';
import '../utils/keys_manager.dart';

List<Interceptor> dioInterceptors = [
  // For logging request & response
  PrettyDioLogger(
    requestHeader: true,
    requestBody: true,
  ),

  InterceptorsWrapper(
    onRequest: (options, handler) async {
      // For token handling
      final token = CacheHelper.getStringData(KeysManager.token);

      if (token != null) {
        // Set the Authorization header with the cached access token
        options.headers['Authorization'] = 'Bearer $token';
      }

      return handler.next(options);
    },
    // onResponse: (response, handler) {
    //   return handler.next(response);
    // },
    onError: (error, handler) {
      kprint("Error from DioConsumer: ${error.message}");

      if (error.response?.statusCode == APIResponseCodes.unauthorized ||
          error.response?.statusCode == APIResponseCodes.forbidden) {
        /// User is unauthorized or forbidden

        // Clear cashed data
        CacheHelper.removeData(key: KeysManager.token);
        // Navigate to login page
        RouteManager.navigatorKey.currentState!.pushNamedAndRemoveUntil(
          PageName.login,
          (route) => false,
        );
      } else {
        return handler.next(error);
      }
    },
  ),
];
