import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefrenceInitial {
  static SharedPreferences? _sharedPreferences;
  static get sharedPreferences async {
    if (_sharedPreferences == null) {
      return _sharedPreferences = await SharedPreferences.getInstance();
    } else {
      return _sharedPreferences!;
    }
  }
}
