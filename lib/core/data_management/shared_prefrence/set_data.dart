import 'package:messeges_app/core/data_management/shared_prefrence/init.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefSetData {
  static SharedPreferences sharedPref =
      SharedPrefrenceInitial.sharedPreferences;

  static void setData({required String key , required value}) {
    sharedPref.setString(key, value);
  }
}
