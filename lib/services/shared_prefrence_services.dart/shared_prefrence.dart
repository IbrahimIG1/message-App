import 'package:messeges_app/core/data_management/shared_prefrence/get_data.dart';
import 'package:messeges_app/core/data_management/shared_prefrence/set_data.dart';

class SharedPrefrenceServices {
  static void setData({required String key, required value}) {
    SharedPrefSetData.setData(key: key, value: value);
  }

  static void getData({required String key}) {
    SharedPrefGetData.getData(key: key);
  }
}
