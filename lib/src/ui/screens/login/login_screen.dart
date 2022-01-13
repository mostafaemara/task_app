import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/src/controller/login_controller.dart';
import 'package:task/src/ui/styles/app_colors.dart';

import 'widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final controller = Get.put(LoginController());
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
          body: LoginForm(),
        ),
      ),
    );
  }
}
