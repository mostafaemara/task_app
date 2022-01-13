import 'package:get/get.dart';
import 'package:task/src/data/model/auth_state.dart';
import 'package:task/src/data/model/user.dart';
import 'package:task/src/services/auth_service.dart';

class AuthController extends GetxController {
  var state = const AuthState.initilizing().obs;

  void userAuthnticated(User user) {
    state.value = AuthState.authenticated(user: user);
  }

  void userUnAuthnticated() {
    state.value = const AuthState.unAuthenticated();
  }

  void checkAuth() async {
    final AuthService authService = Get.find();

    final user = await authService.checkIfUserAuth();

    if (user == null) {
      userUnAuthnticated();
    } else {
      userAuthnticated(user);
    }
  }

  void logout() async {
    final AuthService authService = Get.find();
    await authService.logout();
    userUnAuthnticated();
  }
}
