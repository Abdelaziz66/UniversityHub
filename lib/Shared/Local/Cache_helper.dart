

import 'package:shared_preferences/shared_preferences.dart';

class CachHelper {
  static SharedPreferences? sharedPreferences;
  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  // static Future<bool?> putBoolean(
  //     {required String key, required bool value}) async {
  //   return await sharedPreferences?.setBool(key, value);
  // }
  //
  // static bool? getBoolean({
  //   required String key,
  // }) {
  //   return sharedPreferences?.getBool(key);
  // }

  static Future<void> saveData(
      {required String key, required var value}) async {
    if (value is String) {
      print('aaaa');
      await sharedPreferences?.setString(key, value);
    }
    if (value is double) {
       await sharedPreferences?.setDouble(key, value);
    }
    if (value is int) {
       await sharedPreferences?.setInt(key, value);
    }
     await sharedPreferences?.setBool(key, value);
  }

  static dynamic getData({
    required String key,
  }) {
    return sharedPreferences?.getString(key);
  }

  static Future<bool?> removedata ( {required String key,})async{
    return await sharedPreferences?.remove(key);

  }
}