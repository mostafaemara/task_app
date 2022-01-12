import 'package:flutter/material.dart';
import 'package:task/ui/screens/widgets/email_form_field.dart';
import 'package:task/ui/screens/widgets/password_form_field.dart';

import 'country_form_field.dart';
import 'mobile_form_field.dart';
import 'name_form_field.dart';
import 'signup_button.dart';

class SignupForm extends StatelessWidget {
  SignupForm({Key? key}) : super(key: key);
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _mobileController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            const Spacer(),
            NameFormField(
              controller: _nameController,
            ),
            const SizedBox(
              height: 16,
            ),
            const EmailFormField(),
            const SizedBox(
              height: 16,
            ),
            const CountryFormField(),
            const SizedBox(
              height: 16,
            ),
            const MobileFormField(),
            const SizedBox(
              height: 16,
            ),
            PasswordFormField(
                controller: _passwordController, hintText: "Password"),
            const SizedBox(
              height: 16,
            ),
            PasswordFormField(
                controller: _passwordController, hintText: "Confirm Password"),
            const SizedBox(
              height: 20,
            ),
            const SignupButton(),
            const SizedBox(
              height: 72,
            ),
          ],
        ),
      ),
    );
  }
}
