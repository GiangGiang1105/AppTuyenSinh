import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  String id;
  String fullName;
  String birthDay;
  String phone;
  String userName;
  String passWord;
  String email;

  User(
      {this.id,
      this.fullName,
      this.birthDay,
      this.phone,
      this.userName,
      this.passWord,
      this.email});


  factory User.fromJson(Map<String, dynamic> json){
    return User(
      id: json['uid'].toString(),
      fullName: json['fullName'].toString(),
      birthDay: json['birthDay'].toString(),
      phone: json['phone'].toString(),
      userName: json['userName'].toString(),
      passWord: json['passWord'].toString(),
      email: json['email'].toString(),
    );
  }
}
