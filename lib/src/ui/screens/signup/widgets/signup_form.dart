import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/src/controller/signup_controller.dart';
import 'package:task/src/data/exception/auth_exception.dart';
import 'package:task/src/data/model/signup_input.dart';
import 'package:task/src/ui/screens/widgets/email_form_field.dart';
import 'package:task/src/ui/screens/widgets/error_dialog.dart';
import 'package:task/src/ui/screens/widgets/loading_dialog.dart';
import 'package:task/src/ui/screens/widgets/password_form_field.dart';

import 'confirm_password_field.dart';
import 'country_form_field.dart';
import 'mobile_form_field.dart';
import 'name_form_field.dart';
import 'signup_button.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({Key? key}) : super(key: key);

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final SignupController _signUpController = Get.find();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _mobileController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  int? _selectedCountryCode = 64;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: GetBuilder<SignupController>(builder: (controller) {
              controller.state.listen((state) {
                state.whenOrNull(
                  failed: _handleSubmissionFailure,
                  submitting: _showLoadingDialog,
                );
              });

              return Column(
                children: [
                  const Spacer(),
                  NameFormField(
                    controller: _nameController,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  EmailFormField(
                    controller: _emailController,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const CountryFormField(),
                  const SizedBox(
                    height: 16,
                  ),
                  MobileFormField(
                    controller: _mobileController,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  PasswordFormField(
                    controller: _passwordController,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ConfirmPasswordFormField(
                    controller: _confirmPasswordController,
                    passwordController: _passwordController,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SignupButton(
                    onPressed: _submit,
                  ),
                  const SizedBox(
                    height: 72,
                  ),
                ],
              );
            })));
  }

  _showLoadingDialog() {
    Get.dialog(const LoadingDialog(), barrierDismissible: false);
  }

  void _submit() {
    if (_isFormValid()) {
      _signUpController.submit(SignupInputs(
          countryId: _selectedCountryCode!,
          email: _emailController.text,
          mobile: _mobileController.text,
          name: _nameController.text,
          password: _passwordController.text));
    }
  }

  bool _isFormValid() {
    if (_formKey.currentState!.validate() && _selectedCountryCode != null) {
      _formKey.currentState!.save();
      return true;
    }

    return false;
  }

  void _handleSubmissionFailure(AuthError error) {
    String errorMessage = "";

    switch (error) {
      case AuthError.emailOrPasswordNotCorrect:
        errorMessage = "emailOrPasswordNotCorrect";
        break;
      case AuthError.unkownError:
        errorMessage = "Unkow Error";
        break;
      default:
        errorMessage = "Unkow Error";
        break;
    }
    _showErrorDialog(errorMessage);
  }

  void _showErrorDialog(String failure) {
    Get.back();
    Get.dialog(ErrorDialog(
      title: "Error",
      body: failure,
    ));
  }

  void _setCountryCode(int? code) {
    if (code != null) {
      setState(() {
        _selectedCountryCode = code;
      });
    }
  }
}
