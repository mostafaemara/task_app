import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/src/controller/signup_controller.dart';
import 'package:task/src/ui/styles/app_colors.dart';

import 'widgets/signup_form.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);
  final controller = Get.put(SignupController());
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: AppColors.buttonsBakgroundColor
          // image: DecorationImage(
          //     image: AssetImage("assets/images/bg.jpg"), fit: BoxFit.cover)
          ),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(),
          backgroundColor: Colors.transparent,
          body: const SignupForm(),
        ),
      ),
    );
  }
}
