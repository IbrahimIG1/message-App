import 'package:flutter/material.dart';

class AppRoute
{
  static moveToScreens(Widget screen)
  {
    return MaterialPageRoute(builder: (context) =>screen ,);
  }
  
}