import 'package:firebase_auth/firebase_auth.dart';

class FirebaseLogin {
  static final FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<void> login(
      {required String email, required String password}) async {
    await _auth.signInWithEmailAndPassword(email: email, password: password);
  }
}
