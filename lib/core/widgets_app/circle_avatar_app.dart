import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleAvatarApp extends StatelessWidget {
  const CircleAvatarApp({super.key, required this.child, required this.radius});
  final Icon child;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: child,
      radius: radius.w,
    );
  }
}
