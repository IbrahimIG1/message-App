import 'package:flutter/material.dart';
import 'package:messeges_app/core/models/user_model.dart';
import 'package:messeges_app/core/network/services/services.dart';
import 'package:messeges_app/core/widgets_app/text_field_app.dart';
import 'package:messeges_app/ui/home_screen/widgets/chats_list.dart';
import 'package:messeges_app/ui/home_screen/widgets/story_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> json = {
    'name':'ibrahim',
      'email':'ibrahim1@gmail.com',
      'password':'password',
      'icon':Icon(Icons.person),
  };
    Services.userModel= UserModel.fromJson(json);
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
            GestureDetector(
                onTap: () {
                  Services.signUp();
                },
                child: StorySection()),
            ChatsList(),
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
