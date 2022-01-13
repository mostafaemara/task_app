import 'package:flutter/material.dart';

import 'package:task/src/ui/styles/app_colors.dart';
import 'package:task/src/validators/auth_validators.dart';

class NameFormField extends StatelessWidget {
  const NameFormField({
    Key? key,
    required this.controller,
  }) : super(key: key);
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: AppColors.hintTextColor),
      validator: nameVaildator,
      controller: controller,
      decoration: const InputDecoration(hintText: "Name"),
    );
  }
}
