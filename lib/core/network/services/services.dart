import 'package:firebase_core/firebase_core.dart';
import 'package:messeges_app/core/models/user_model.dart';
import 'package:messeges_app/core/network/firebase/login.dart';
import 'package:messeges_app/core/network/firebase/save_data_on_server.dart';
import 'package:messeges_app/core/network/firebase/sign_up.dart';
import 'package:messeges_app/firebase_options.dart';

class Services {
  static UserModel? userModel;

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
}
