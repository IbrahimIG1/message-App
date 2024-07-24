import 'package:firebase_auth/firebase_auth.dart';
import 'package:messeges_app/core/constance/contance.dart';
import 'package:messeges_app/services/shared_prefrence_services.dart/shared_prefrence.dart';

class FirebaseLogin {
  static Future<void> login(
      {required String email, required String password}) async {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) {
      String uId = value.user!.uid;
      Constance.uId = uId;
      SharedPrefrenceServices.setData(key: 'uId', value: uId);
    });
  }
}
