import 'package:flutter/material.dart';

import 'package:task/src/ui/styles/app_colors.dart';
import 'package:task/src/validators/auth_validators.dart';

class EmailFormField extends StatelessWidget {
  const EmailFormField({
    Key? key,
    required this.controller,
  }) : super(key: key);
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: emailVaildator,
      style: const TextStyle(color: AppColors.hintTextColor),
      decoration: const InputDecoration(hintText: "Email"),
    );
  }
}
