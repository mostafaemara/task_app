import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/src/controller/auth_controller.dart';
import 'package:task/src/ui/styles/app_colors.dart';

class LogutButton extends StatelessWidget {
  LogutButton({
    Key? key,
  }) : super(key: key);
  final AuthController authController = Get.find();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 179,
      height: 54,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            side: BorderSide.none,
            primary: AppColors.logOutButtonColor,
            elevation: 0,
          ),
          onPressed: () => authController.logout(),
          child: const Text("Logout")),
    );
  }
}
