import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseShared {
  static FirebaseAuth? _auth;
  static FirebaseFirestore? _firestor;
  static get auth {
    if (_auth == null) {
      return _auth =  FirebaseAuth.instance;
    } else {
      return _auth;
    }
  }

  static get firestor {
    if (_firestor == null) {
      return _firestor =FirebaseFirestore.instance;
    } else {
      return _firestor;
    }
  }
  
}
