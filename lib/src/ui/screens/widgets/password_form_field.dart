import 'package:flutter/material.dart';

import 'package:task/src/ui/styles/app_colors.dart';
import 'package:task/src/validators/auth_validators.dart';

class PasswordFormField extends StatefulWidget {
  const PasswordFormField({
    Key? key,
    required this.controller,
  }) : super(key: key);
  final TextEditingController controller;

  @override
  State<PasswordFormField> createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  bool isPasswordObscure = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        validator: passwordValidator,
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
            hintText: "Password"));
  }

  void _changePasswordVisibility() {
    setState(() {
      isPasswordObscure = !isPasswordObscure;
    });
  }
}
