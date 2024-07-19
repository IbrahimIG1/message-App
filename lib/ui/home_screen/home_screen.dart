import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:messeges_app/core/widgets_app/text_field_app.dart';
import 'package:messeges_app/ui/home_screen/cubit/home_cubit.dart';
import 'package:messeges_app/ui/home_screen/cubit/home_state_cubit.dart';
import 'package:messeges_app/ui/home_screen/widgets/story_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Chats"), centerTitle: true, actions: [
        Icon(Icons.roller_shades_outlined),
      ]),
      drawer: Drawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            AppTextField(text: "search", icon: Icon(Icons.search)),
            StorySection(),
            /* 
           BlocProvider(
              create: (context) => HomeCubit(),
              child: BlocConsumer<HomeCubit, HomeStateCubit>(
                listener: (context, state) {
                },
                builder: (context, state) {
                  var homeCubit = HomeCubit.get(context);
                  return ElevatedButton(
                      onPressed: () {
                        homeCubit.getData();
                      },
                      child: Text("Test"));
                },
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
