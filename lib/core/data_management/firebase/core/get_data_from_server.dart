import 'package:cloud_firestore/cloud_firestore.dart';

class GetDataFromServer {

  static Future<void> getData({required String uId}) async {
    await FirebaseFirestore.instance.collection('users').doc(uId).get().then((value) {
      value.id;
    });
  }
}
