import 'package:flutter/material.dart';

class UserModel {
  String? name;
  String? email;
  String? password;
  Icon? icon;

  // private constructor
  UserModel(this.name, this.email, this.password, this.icon);

  UserModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    password = json['password'];
    icon = json['icon'];
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
