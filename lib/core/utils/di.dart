// This the dependency injection file,
// it's responsible for initializing the app and its dependencies.

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:new_structure/core/api/api_consumer.dart';
import 'package:new_structure/core/api/dio_consumer.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> initDependencies() async {
  // Api consumer instance
  sl.registerLazySingleton<ApiConsumer>(
    () => DioConsumer(
      dio: Dio(),
    ),
  );

  // Shared preferences instance
  final sharedPref = await SharedPreferences.getInstance();
  sl.registerLazySingleton<SharedPreferences>(() => sharedPref);
}
