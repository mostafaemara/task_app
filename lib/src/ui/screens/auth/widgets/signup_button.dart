import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/src/routes/routes.dart';

class SignupButton extends StatelessWidget {
  const SignupButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 40,
        child: ElevatedButton(
            onPressed: () => Get.toNamed(Routes.signup),
            child: const Text("SIGN UP")));
  }
}
