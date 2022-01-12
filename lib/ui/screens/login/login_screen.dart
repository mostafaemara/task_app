import 'package:flutter/material.dart';
import 'package:task/ui/screens/login/widgets/login_form.dart';
import 'package:task/ui/screens/styles/app_colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: AppColors.buttonsBakgroundColor
          // image: DecorationImage(
          //     image: AssetImage("assets/images/bg.jpg"), fit: BoxFit.cover)
          ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: LoginForm(),
        ),
      ),
    );
  }
}
