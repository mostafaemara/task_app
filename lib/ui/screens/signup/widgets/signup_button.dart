import 'package:flutter/material.dart';
import 'package:task/data/model/login_input.dart';
import 'package:task/data/model/signup_input.dart';
import 'package:task/data/repositories/auth_repository.dart';

class SignupButton extends StatelessWidget {
  const SignupButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 40,
        child: ElevatedButton(
            onPressed: () async {
              final authRepo = AuthRepository();
              authRepo.signup(SignupInputs(
                  email: "mostafa@sasas.com",
                  password: "123456789",
                  mobile: "01114662s5",
                  name: "mostafa",
                  countryId: 64));
            },
            child: const Text("SIGN UP")));
  }
}
