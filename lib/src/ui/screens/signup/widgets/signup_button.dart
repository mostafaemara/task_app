import 'package:flutter/material.dart';
import 'package:task/src/data/model/signup_input.dart';

import 'package:task/src/services/auth_service.dart';

class SignupButton extends StatelessWidget {
  const SignupButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 40,
        child:
            ElevatedButton(onPressed: onPressed, child: const Text("SIGN UP")));
  }
}
