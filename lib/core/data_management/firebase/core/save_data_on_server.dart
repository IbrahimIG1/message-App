import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:messeges_app/core/models/user_model.dart';
import 'package:messeges_app/core/data_management/firebase/firebase_shared.dart';

class FirebaseSaveData {
  static FirebaseFirestore firestore = FirebaseShared.firestor;

  static Future<void> saveDataOnServer({required UserModel userModel,required String uId}) async {
    await firestore.collection('users').doc(uId).set(userModel.toJson());
  }
}
