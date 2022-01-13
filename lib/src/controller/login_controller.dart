import 'package:get/get.dart';
import 'package:task/src/controller/auth_controller.dart';
import 'package:task/src/data/exception/auth_exception.dart';
import 'package:task/src/data/model/login_input.dart';
import 'package:task/src/data/model/submission_state.dart';

import 'package:task/src/services/auth_service.dart';

class LoginController extends GetxController {
  var state = const SubmissionState<AuthError>.idle().obs;
  void submit(LoginInputs inputs) async {
    try {
      final AuthService authService = Get.find();
      final AuthController authController = Get.find();
      state.value = const SubmissionState.submitting();
      final user = await authService.login(inputs);
      state.value = const SubmissionState.success();
      authController.userAuthnticated(user);
    } on AuthException catch (e) {
      state.value = SubmissionState.failed(failure: e.error);
    }
  }
}
