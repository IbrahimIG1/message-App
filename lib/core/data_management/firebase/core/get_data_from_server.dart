import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:messeges_app/core/data_management/firebase/firebase_shared.dart';

class GetDataFromServer {
  static FirebaseFirestore firebaseCore = FirebaseShared.firestor;

  static Future<void> getData() async {
    await firebaseCore.collection('users').get();
  }
}
