import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:messeges_app/core/models/user_model.dart';
import 'package:messeges_app/core/widgets_app/circle_avatar_app.dart';

class StorySection extends StatelessWidget {
  StorySection({super.key});
  final List<UserData> userData = [
    UserData(
      Icon(Icons.person),
      'message',
      name: 'ibrahim',
    ),
    UserData(
      Icon(Icons.person),
      'message',
      name: 'uossef',
    ),
    UserData(
      Icon(Icons.person),
      'message',
      name: 'reda',
    ),
    UserData(
      Icon(Icons.person),
      'message',
      name: 'nagwa',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
      child: Container(
        width: double.infinity,
        height: 120.h,
        child: ListView.builder(
          itemCount: userData.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: storySectionItem(userData[index].icon, userData[index].name),
          ),
        ),
      ),
    );
  }

  Widget storySectionItem(Icon icon, String name) => Column(
        children: [
          CircleAvatarApp(child: icon, radius: 30.w),
          SizedBox(
            height: 5.h,
          ),
          Text(
            name,
            style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
          )
        ],
      );
}
