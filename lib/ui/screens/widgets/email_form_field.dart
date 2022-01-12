import 'package:flutter/material.dart';
import 'package:task/ui/screens/styles/app_colors.dart';

class EmailFormField extends StatelessWidget {
  const EmailFormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: AppColors.hintTextColor),
      decoration: const InputDecoration(hintText: "Email"),
    );
  }
}
