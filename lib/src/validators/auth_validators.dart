import 'package:get/get.dart';

String? emailVaildator(String? value) {
  if (value != null) {
    if (value.isEmpty) {
      return "Enter email";
    }
    if (!GetUtils.isEmail(value)) {
      return "email is Invalid";
    }
  }
}

String? nameVaildator(String? value) {
  if (value != null) {
    if (value.isEmpty) {
      return "enter your name";
    }
  }
}

String? mobileVaildator(String? value) {
  if (value != null) {
    if (value.isEmpty) {
      return "enter your mobile";
    }
    if (!GetUtils.isPhoneNumber(value)) {
      return "invalid mobile number";
    }
  }
}

String? passwordValidator(String? value) {
  if (value != null) {
    if (value.isEmpty) {
      return "please Enter password";
    }
    if (value.length <= 6) {
      return "password too short";
    }
  }
}

String? confirmPasswordValidator(String? value, String password) {
  if (value != null) {
    if (value.isEmpty) {
      return "enter password";
    }
    if (value != password) {
      return "password not match";
    }
  }
}
