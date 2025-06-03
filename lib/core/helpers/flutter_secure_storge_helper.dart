import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class FlutterSecureStorageHelper {
  static late FlutterSecureStorage storage;
  static init() {
    storage = const FlutterSecureStorage(
        aOptions: AndroidOptions(encryptedSharedPreferences: true),
        iOptions:
            IOSOptions(accessibility: KeychainAccessibility.first_unlock),);
  }

  static Future<void> setData(
      {required String key, required String value,}) async {
    await storage.write(key: key, value: value);
  }

  static Future<String?> getStringData({required String key}) async {
    return await storage.read(key: key);
  }

  static Future<bool?> getBoolData({required String key}) async {
    final String? value = await storage.read(key: key);
    if (value != null) {
      return value.toLowerCase() == 'true';
    }
    return null;
  }

  static Future<int?> getIntData({required String key}) async {
    final String? value = await storage.read(key: key);
    if (value != null) {
      return int.parse(value);
    }
    return null;
  }

  static Future<void> delete({required String key}) async {
    await storage.delete(key: key);
  }

  static Future<void> deleteAll({required String key}) async {
    await storage.delete(key: key);
  }
}
