import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/src/controller/login_controller.dart';
import 'package:task/src/data/exception/auth_exception.dart';
import 'package:task/src/data/model/login_input.dart';
import 'package:task/src/ui/screens/widgets/email_form_field.dart';
import 'package:task/src/ui/screens/widgets/error_dialog.dart';
import 'package:task/src/ui/screens/widgets/loading_dialog.dart';

import '../../widgets/password_form_field.dart';
import 'forgot_password_button.dart';
import 'login_button.dart';

class LoginForm extends StatelessWidget {
  LoginForm({Key? key}) : super(key: key);
  final _passwordController = TextEditingController();
  final LoginController _loginController = Get.find();
  final _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: GetBuilder<LoginController>(builder: (controller) {
        controller.state.listen((state) {
          state.whenOrNull(
            failed: _handleSubmissionFailure,
            submitting: _showLoadingDialog,
          );
        });
        return Form(
            key: _formKey,
            child: Column(
              children: [
                const Spacer(),
                EmailFormField(
                  controller: _emailController,
                ),
                const SizedBox(
                  height: 16,
                ),
                PasswordFormField(
                  controller: _passwordController,
                ),
                const SizedBox(
                  height: 24,
                ),
                const ForgotPasswordButton(),
                const SizedBox(
                  height: 70,
                ),
                LoginButton(
                  onPressed: _login,
                ),
                const SizedBox(
                  height: 88,
                ),
              ],
            ));
      }),
    );
  }

  _showLoadingDialog() {
    Get.dialog(const LoadingDialog(), barrierDismissible: false);
  }

  void _login() {
    if (_isFormValid()) {
      _loginController.submit(LoginInputs(
          email: _emailController.text, password: _passwordController.text));
    }
  }

  bool _isFormValid() {
    if (_formKey.currentState!.validate()) {
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
}
