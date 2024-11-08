import 'package:laundry_saas_flutter/utils/keys.dart';

class AppUser {
  String firstName;
  String lastName;
  String email;
  String phone;
  int? createdAt;

  AppUser({ required this.firstName, required this.lastName, required this.email, required this.phone,});

  Map<String,dynamic> toSignUpResponse(String password) => {
    Keys.firstName : firstName,
    Keys.lastName : lastName,
    Keys.email : email,
    Keys.phone : phone,
    Keys.password: password,
  };

}