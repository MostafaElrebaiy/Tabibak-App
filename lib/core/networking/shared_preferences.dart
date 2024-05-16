import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences sharedPreferences;

  static Future cacheInitializations() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool> insertToCache({required String key, required String value})async{
   return await sharedPreferences.setString(key, value);
  }
  static String getCacheData({required String key}){
     return sharedPreferences.getString(key) ?? "";
  }

  static Future<bool> removeCacheData({required String key})async{
    return await sharedPreferences.remove(key);
  }
}
