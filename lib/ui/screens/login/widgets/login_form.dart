import 'package:flutter/material.dart';
import 'package:task/ui/screens/styles/app_colors.dart';
import 'package:task/ui/screens/widgets/email_form_field.dart';

import '../../widgets/password_form_field.dart';

class LoginForm extends StatelessWidget {
  LoginForm({Key? key}) : super(key: key);
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Form(
          child: Column(
        children: [
          const Spacer(),
          EmailFormField(),
          SizedBox(
            height: 16,
          ),
          PasswordFormField(
            controller: _passwordController,
            hintText: "Password",
          ),
          SizedBox(
            height: 24,
          ),
          TextButton(onPressed: () {}, child: Text("Forget Password?")),
          SizedBox(
            height: 70,
          ),
          SizedBox(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(onPressed: () {}, child: Text("LOG IN"))),
          SizedBox(
            height: 88,
          ),
        ],
      )),
    );
  }
}
