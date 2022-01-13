import 'package:flutter/material.dart';
import 'package:task/src/ui/styles/app_colors.dart';

import 'package:task/src/validators/auth_validators.dart';

class MobileFormField extends StatelessWidget {
  const MobileFormField({
    Key? key,
    required this.controller,
  }) : super(key: key);
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            width: 80,
            child: TextFormField(
              decoration: const InputDecoration(hintText: "+20"),
              //it wont be TextFormField just container with text widget changes due to selected country
            )),
        const SizedBox(
          width: 12,
        ),
        Expanded(
            child: TextFormField(
          style: const TextStyle(color: AppColors.hintTextColor),
          controller: controller,
          validator: mobileVaildator,
          decoration: const InputDecoration(hintText: "Mobile Number"),
        )),
      ],
    );
  }
}
