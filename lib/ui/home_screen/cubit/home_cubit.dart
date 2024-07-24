import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messeges_app/core/route/route.dart';
import 'package:messeges_app/core/widgets_app/default_dialog.dart';
import 'package:messeges_app/services/firebase_services.dart/firebase.dart';
import 'package:messeges_app/ui/home_screen/cubit/home_state_cubit.dart';
import 'package:messeges_app/ui/home_screen/home_screen.dart';
import 'package:messeges_app/ui/screens/login_screen/login_screen.dart';

class AppCubit extends Cubit<AppCubitState> {
  AppCubit() : super(InitialState());
  static AppCubit get(context) => BlocProvider.of(context);

  void userSignUp(BuildContext context) {
    FirebaseServices.signUp().then((value) {
      
      showDialog(
        context: context,
        builder: (context) => DefaultDialog(
          color: Colors.greenAccent,
          message: 'Sign UP Success'.toString(),
          onpress: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ));
          },
        ),
      );
      emit(SignUpSuccessState());
    }).catchError((error) {
      showDialog(
        context: context,
        builder: (context) => DefaultDialog(
          color: Colors.redAccent,
          message: error.toString(),
          onpress: () {
            Navigator.push(context, AppRoute.moveToScreens(LoginScreen()));
          },
        ),
      );
      emit(SignUpErrorState());
    });
  }

  void userLogin(BuildContext context) {
    FirebaseServices.login().then((value) {
      print("Login Success");
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ));
      emit(SignUpSuccessState());
    }).catchError((error) {
      showDialog(
        context: context,
        builder: (context) => DefaultDialog(
          color: Colors.redAccent,
          message: error.toString(),
          onpress: () {
            Navigator.pop(context);
          },
        ),
      );
      emit(SignUpErrorState());
    });
  }

  void getUserData() {
    FirebaseServices.getData().then((value) {
      emit(GetDataSuccessState());
    }).catchError((error) {
      emit(GetDataErrorState());
    });
  }
  // void saveData() async {
  //   try {
  //     await dp.collection("users").add(user).then((value) {
  //       print('save user data done');
  //       getData();
  //     });
  //   } catch (error) {
  //     // TODO
  //     print("Error in save user data => ${error.toString}");
  //   }
  // }

  // getData() async {
  //   try {
  //     await dp.collection("users").get().then((value) {
  //       value.docs.forEach((userData) {
  //         print('get user data done =>${userData.get('first')}');
  //       });
  //     });
  //   } catch (error) {
  //     // TODO
  //     print("Error in get user data => ${error.toString}");
  //   }
  // }
}
