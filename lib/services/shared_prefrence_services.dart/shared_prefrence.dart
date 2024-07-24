import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefrenceServices {
  static late SharedPreferences sharedPreferences;
  static Future<void> init() async {
    print('initial shared prefrence');
    
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static void setData({required String key, required value}) {
    print('setData in shared prefrence key : $key , value : $value');

    sharedPreferences.setString(key, value);
  }

  static Object? getData({required String key}) {
    return sharedPreferences.get(key) ?? "";
  }
}
