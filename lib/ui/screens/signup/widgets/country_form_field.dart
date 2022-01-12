import 'package:flutter/material.dart';
import 'package:task/ui/screens/styles/app_colors.dart';

class CountryFormField extends StatelessWidget {
  const CountryFormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(items: [
      DropdownMenuItem(
          child: Text(
        "Egypt",
        style: TextStyle(color: AppColors.hintTextColor),
      ))
    ], onChanged: (value) {});
  }
}
