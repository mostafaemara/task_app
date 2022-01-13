import 'package:flutter/material.dart';

import 'package:task/src/ui/styles/app_colors.dart';
import 'package:task/src/validators/auth_validators.dart';

class ConfirmPasswordFormField extends StatefulWidget {
  const ConfirmPasswordFormField({
    Key? key,
    required this.controller,
    required this.passwordController,
  }) : super(key: key);
  final TextEditingController controller;
  final TextEditingController passwordController;

  @override
  State<ConfirmPasswordFormField> createState() =>
      _ConfirmPasswordFormFieldState();
}

class _ConfirmPasswordFormFieldState extends State<ConfirmPasswordFormField> {
  bool isPasswordObscure = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        validator: (value) => confirmPasswordValidator(
            value, widget.passwordController.value.text),
        controller: widget.controller,
        style: const TextStyle(color: AppColors.hintTextColor),
        obscureText: isPasswordObscure,
        decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: Icon(isPasswordObscure
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined),
              onPressed: _changePasswordVisibility,
            ),
            hintText: "Confirm Password"));
  }

  void _changePasswordVisibility() {
    setState(() {
      isPasswordObscure = !isPasswordObscure;
    });
  }
}
