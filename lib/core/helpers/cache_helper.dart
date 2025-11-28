import 'package:shared_preferences/shared_preferences.dart';

import '../utils/dependency_injection/di.dart';

// CacheHelper That's Connect and Talk to local database.
class CacheHelper {
  static late SharedPreferences sharedPreferences;

  static Future init() async {
    sharedPreferences = getIt<SharedPreferences>();
  }

  // This fun to put data in local data base using key
  static Future<bool> set({
    required String key,
    required dynamic value,
  }) async {
    if (value is String) {
      return await sharedPreferences.setString(key, value);
    } else if (value is List<String>) {
      return await sharedPreferences.setStringList(key, value);
    } else if (value is bool) {
      return await sharedPreferences.setBool(key, value);
    } else if (value is int) {
      return await sharedPreferences.setInt(key, value);
    } else if (value is double) {
      return await sharedPreferences.setDouble(key, value);
    }
    return false;
  }

  static String? getStringData(String key) {
    return sharedPreferences.getString(key);
  }

  static List<String>? getStringListData(String key) {
    return sharedPreferences.getStringList(key);
  }

  static bool? getBoolData(String key) {
    return sharedPreferences.getBool(key);
  }

  static int? getIntData(String key) {
    return sharedPreferences.getInt(key);
  }

  static double? getDoubleData(String key) {
    return sharedPreferences.getDouble(key);
  }

  // Remove data using specific key
  static Future<bool> removeData({required String key}) async {
    return await sharedPreferences.remove(key);
  }

  // Clear all data in the local data base
  static Future<bool> clearData() async {
    return await sharedPreferences.clear();
  }
}
