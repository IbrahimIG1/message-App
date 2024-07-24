import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:messeges_app/core/constance/extensions.dart';
import 'package:messeges_app/services/firebase_services.dart/firebase.dart';
import 'package:messeges_app/services/shared_prefrence_services.dart/shared_prefrence.dart';
import 'package:messeges_app/ui/home_screen/cubit/home_cubit.dart';
import 'package:messeges_app/ui/home_screen/home_screen.dart';
import 'package:messeges_app/ui/screens/login_screen/login_screen.dart';
import 'core/constance/contance.dart';

void main() async {
  WidgetsFlutterBinding();

  await FirebaseServices.initialFirebase();
  await SharedPrefrenceServices.init();
  Constance.uId = SharedPrefrenceServices.getData(key: 'uId').toString();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    print("${Constance.uId.isNullOrEmpty()} + ${Constance.uId}");
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: BlocProvider(
            create: (context) => AppCubit(),
            child: Constance.uId.isNullOrEmpty()
                ? LoginScreen()
                : const HomeScreen(),
          ),
        );
      },
    );
  }
}
