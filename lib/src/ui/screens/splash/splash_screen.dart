import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/src/controller/auth_controller.dart';
import 'package:task/src/routes/routes.dart';

import 'package:task/src/ui/styles/app_colors.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);
  final AuthController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: AppColors.buttonsBakgroundColor
          // image: DecorationImage(
          //     image: AssetImage("assets/images/bg.jpg"), fit: BoxFit.cover)
          ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: GetBuilder<AuthController>(
            initState: (_) => controller.checkAuth(),
            builder: (controller) {
              controller.state.listen((state) {
                state.whenOrNull(
                  authenticated: (_) => Get.offNamed(Routes.sites),
                  unAuthenticated: () => Get.offNamed(Routes.auth),
                );
              });
              return Center(
                child: Text(
                  "Splash Screen",
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: AppColors.hintTextColor),
                ),
              );
            }),
      ),
    );
  }
}
