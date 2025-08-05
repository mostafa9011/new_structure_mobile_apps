import 'package:dio/dio.dart';
import 'end_points.dart';
import 'interceptor_list.dart';

class DioFactory {
  DioFactory._();

  static final Dio _dio = Dio(
    BaseOptions(
      baseUrl: EndPoints.baseUrl,
      receiveDataWhenStatusError: true,
      // connectTimeout: const Duration(seconds: 10),
      // sendTimeout: const Duration(seconds: 10),
      // receiveTimeout: const Duration(seconds: 10),
      // headers: {
      //   'Content-Type': 'application/json',
      // },
    ),
  )..interceptors.addAll(dioInterceptors);

  static Dio get instance => _dio;
}
