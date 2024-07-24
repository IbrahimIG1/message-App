import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messeges_app/ui/home_screen/cubit/home_cubit.dart';
import 'package:messeges_app/ui/home_screen/cubit/home_state_cubit.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AppCubit, AppCubitState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          AppCubit cubit = AppCubit.get(context);
          return Center(
            child: GestureDetector(
                onTap: () {
                  cubit.userLogin(context);
                  
                },
                child: Text('Login Screen')),
          );
        },
      ),
    );
  }
}
