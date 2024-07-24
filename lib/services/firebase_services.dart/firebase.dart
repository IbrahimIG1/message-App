import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:messeges_app/core/constance/contance.dart';
import 'package:messeges_app/core/data_management/firebase/core/get_data_from_server.dart';
import 'package:messeges_app/core/models/user_model.dart';
import 'package:messeges_app/core/data_management/firebase/auth/login.dart';
import 'package:messeges_app/core/data_management/firebase/auth/sign_up.dart';
import 'package:messeges_app/firebase_options.dart';

class FirebaseServices {
  static UserModel? userModel = UserModel(
    'name',
    'email@email.com',
    '123456',
    Icon(Icons.person_3_outlined),
  );
  // start firebase service in application
  static Future<void> initialFirebase() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  static Future<void> login() async {
    FirebaseLogin.login(
        email: userModel!.email!, password: userModel!.password!);
  }

  static Future<void> signUp() async {
    print('>>>>>>>>>>>>>>>>>>>>> UserModel in Services = ${userModel!.name!}');
    FirebaseSignUp.signUp(userModel: userModel!);
  }

  static Future<void> getData() async {
    GetDataFromServer.getData(uId: Constance.uId);
  }
}
