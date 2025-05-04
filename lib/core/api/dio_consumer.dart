import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:new_structure/config/routes/page_name.dart';
import 'package:new_structure/config/routes/route_manager.dart';
import 'package:new_structure/core/api/api_consumer.dart';
import 'package:new_structure/core/api/end_points.dart';
import 'package:new_structure/core/errors/api/api_response_codes.dart';
import 'package:new_structure/core/helpers/cache_helper.dart';
import 'package:new_structure/core/utils/functions/kprint.dart';
import 'package:new_structure/core/utils/keys_manager.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

/// This class is responsible for handling api calls using Dio package
class DioConsumer implements ApiConsumer {
  final Dio dio;

  DioConsumer({required this.dio}) {
    // for accepting self-signed certificates => http not secure like https
    dio.httpClientAdapter = IOHttpClientAdapter(
      createHttpClient: () {
        final client = HttpClient();
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      },
    );

    dio.options = BaseOptions(
      baseUrl: EndPoints.baseUrl,
      receiveDataWhenStatusError: true,
      sendTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      connectTimeout: const Duration(seconds: 30),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    dio.interceptors.addAll(
      [
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
      ],
    );
  }

  @override
  Future get({
    required String path,
    Map<String, dynamic>? body,
    bool isFormData = false,
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await dio.get(
      path,
      data: isFormData ? FormData.fromMap(body!) : body,
      queryParameters: queryParameters,
    );
    return response.data;
  }

  @override
  Future patch({
    required String path,
    Map<String, dynamic>? body,
    bool isFormData = false,
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await dio.patch(
      path,
      data: isFormData ? FormData.fromMap(body!) : body,
      queryParameters: queryParameters,
    );

    return response.data;
  }

  @override
  Future post({
    required String path,
    bool isFormData = false,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await dio.post(
      path,
      data: isFormData ? FormData.fromMap(body!) : body,
      queryParameters: queryParameters,
    );

    return response.data;
  }

  @override
  Future put({
    required String path,
    Map<String, dynamic>? body,
    bool isFormData = false,
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await dio.put(
      path,
      data: isFormData ? FormData.fromMap(body!) : body,
      queryParameters: queryParameters,
    );
    return response.data;
  }

  @override
  Future delete({
    required String path,
    Map<String, dynamic>? body,
    bool isFormData = false,
    Map<String, dynamic>? queryParameters,
  }) async {
    final resposne = await dio.delete(
      path,
      data: isFormData ? FormData.fromMap(body!) : body,
      queryParameters: queryParameters,
    );

    return resposne.data;
  }
}
