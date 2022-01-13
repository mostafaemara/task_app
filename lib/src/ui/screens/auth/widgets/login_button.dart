import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/src/routes/routes.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () => Get.toNamed(Routes.login),
        child: const Text("Already habe an account? Login Here"));
  }
}
