import 'package:shared_preferences/shared_preferences.dart';

import 'cache_consumer.dart';

class SharedPrefsConsumer implements CacheConsumer {
  final SharedPreferences sharedPreferences;
  SharedPrefsConsumer({required this.sharedPreferences});
  @override
  Future getData({required String key}) async {
    return sharedPreferences.get(key);
  }

  @override
  Future<bool> removeData({required String key}) async {
    return await sharedPreferences.remove(key);
  }

  @override
  Future<bool> saveData({required String key, required value}) async {
    if (value is String) {
      return await sharedPreferences.setString(key, value);
    } else if (value is int) {
      return await sharedPreferences.setInt(key, value);
    } else if (value is bool) {
      return await sharedPreferences.setBool(key, value);
    } else {
      return await sharedPreferences.setDouble(key, value);
    }
  }
}
