import 'package:flutter/material.dart';
import 'package:task/src/ui/styles/app_colors.dart';

import 'widgets/login_button.dart';
import 'widgets/signup_button.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary
          // image: DecorationImage(
          //     image: AssetImage("assets/images/bg.jpg"), fit: BoxFit.cover)
          ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: const [
                Spacer(),
                SignupButton(),
                SizedBox(
                  height: 28,
                ),
                LoginButton(),
                SizedBox(
                  height: 80,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
