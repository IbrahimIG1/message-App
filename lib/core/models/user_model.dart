import 'package:flutter/material.dart';

class UserModel {
  String? name;
  String? email;
  String? password;
  Icon? icon;

  // private constructor
  UserModel._({
    required this.name,
    required this.email,
    required this.password,
    required this.icon,
  });
  static UserModel? _instance;

  factory UserModel.fromJson(Map<String, dynamic> json) {
    if (_instance == null) {
      print('>>>>>>>>>>>>>>>>>>>>>_instance after init =  is null ');
    } else {
      print('>>>>>>>>>>>>>>>>>>>>>_instance after init = ${_instance!.name}');
    }
    _instance ??= UserModel._(
        name: json['name'],
        email: json['email'],
        password: json['password'],
        icon: json['icon']);
    print('>>>>>>>>>>>>>>>>>>>>>_instance before init = ${_instance!.name}');

    return _instance!;
  }
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'password': password,
      'icon': icon.toString(),
    };
  }
}
