import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:messeges_app/core/models/user_model.dart';
import 'package:messeges_app/core/network/firebase/firebase_shared.dart';
import 'package:messeges_app/core/network/firebase/save_data_on_server.dart';

class FirebaseSignUp {
  static FirebaseFirestore firestor = FirebaseShared.firestor;
  static FirebaseAuth auth = FirebaseShared.auth;
  static Future<void> signUp({required UserModel userModel}) async {
    await auth
        .createUserWithEmailAndPassword(
            email: userModel.email!, password: userModel.password!)
        .then((value) {
          
      FirebaseSaveData.saveDataOnServer(userModel: userModel,uId: value.user!.uid);
      print(value.user!.uid);
    });
  }
}
