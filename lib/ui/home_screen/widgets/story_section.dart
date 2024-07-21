import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:messeges_app/core/widgets_app/circle_avatar_app.dart';

class StorySection extends StatelessWidget {
  StorySection({super.key});
  final List<Map<String, dynamic>> json = [
    {
      'name': 'ibrahim',
      'email': 'ibrahim@',
      'password': 'password',
      'icon': Icon(Icons.person),
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      child: Container(
        width: double.infinity,
        height: 100.h,
        child: ListView.builder(
          itemCount: json.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: storySectionItem(json[index]['icon'], json[index]['name']),
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
