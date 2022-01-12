import 'package:flutter/material.dart';
import 'package:task/ui/screens/styles/app_colors.dart';

class PasswordFormField extends StatefulWidget {
  const PasswordFormField({
    Key? key,
    required this.controller,
    required this.hintText,
  }) : super(key: key);
  final TextEditingController controller;
  final String hintText;
  @override
  State<PasswordFormField> createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  bool isPasswordObscure = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
            hintText: widget.hintText));
  }

  void _changePasswordVisibility() {
    setState(() {
      isPasswordObscure = !isPasswordObscure;
    });
  }
}
