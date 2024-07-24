import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:messeges_app/core/theming/text_styles.dart';

class DefaultDialog extends StatelessWidget {
  final String message;
  final Color color;
  final VoidCallback onpress;
  const DefaultDialog({super.key, required this.message, required this.color, required this.onpress});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: 120.w,
      decoration: BoxDecoration(color: color),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Error", style: TextStyles.font20WhiteNormal),
          SizedBox(height: 10.h),
          Text(message, style: TextStyles.font20BlackNormal),
          SizedBox(height: 10.h),
          ElevatedButton(
            onPressed: onpress,
            child: Text("Close"),
          )
        ],
      ),
    );
  }
}
