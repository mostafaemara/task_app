import 'package:flutter/material.dart';

import 'package:task/src/ui/styles/app_colors.dart';

class CountryFormField extends StatelessWidget {
  const CountryFormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
        dropdownColor: AppColors.inputBackgroundColor,
        iconEnabledColor: AppColors.inputBackgroundColor,
        items: const [
          DropdownMenuItem(
              child: Text(
            "Egypt",
            style: TextStyle(color: AppColors.hintTextColor),
          ))
        ],
        onChanged: (value) {});
  }
}
