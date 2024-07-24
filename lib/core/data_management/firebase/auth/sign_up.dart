import 'package:firebase_auth/firebase_auth.dart';
import 'package:messeges_app/core/models/user_model.dart';
import 'package:messeges_app/core/data_management/firebase/core/save_data_on_server.dart';
import 'package:messeges_app/services/shared_prefrence_services.dart/shared_prefrence.dart';

import '../../../constance/contance.dart';

class FirebaseSignUp {
  static Future<void> signUp({required UserModel userModel}) async {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
            email: userModel.email!, password: userModel.password!)
        .then((value) {
      String uId = value.user!.uid;
      Constance.uId = uId;
      SharedPrefrenceServices.setData(key: 'uId', value: uId);
      FirebaseSaveData.saveDataOnServer(userModel: userModel, uId: uId);

      print(value.user!.uid);
    });
  }
}
