import 'package:messeges_app/core/data_management/shared_prefrence/init.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefGetData {
  static SharedPreferences sharedPref =
      SharedPrefrenceInitial.sharedPreferences;

  static void getData({required String key}) {
    sharedPref.get(key);
  }
}
