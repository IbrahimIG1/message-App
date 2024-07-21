import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:messeges_app/core/theming/text_styles.dart';
import 'package:messeges_app/core/widgets_app/circle_avatar_app.dart';

class ChatsList extends StatelessWidget {
  ChatsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        // shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 15.h),
            child: chatListItem(
                icon: Icon(Icons.person),
                name: "person name",
                lastMessage: "Message Here",
                messageTime: "19:24"),
          );
        },
      ),
    );
  }

  Widget chatListItem(
          {required Icon icon,
          required String name,
          required String lastMessage,
          required String messageTime}) =>
      Row(
        children: [
          CircleAvatarApp(child: icon, radius: 30.w),
          SizedBox(
            width: 5.h,
          ),
          Column(
            children: [
              Text(name, style: TextStyles.font20BlackNormal),
              Text(lastMessage + messageTime,
                  style: TextStyles.font13GreyRegular),
            ],
          )
        ],
      );
}
