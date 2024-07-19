import 'package:flutter/material.dart';

class UserData {
  final String name;
  final Icon icon;
  final String message;
  UserData(
    this.icon,
    this.message, {
    required this.name,
  });
}
