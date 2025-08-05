import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'end_points.dart';
import 'interceptor_list.dart';

/// This class is responsible for handling api calls using Dio package
class DioConsumer {
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

    // Base options
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

    // Add interceptors
    dio.interceptors.addAll(dioInterceptors);
  }

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
