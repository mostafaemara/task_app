import 'package:get/get.dart';
import 'package:task/data/model/auth_state.dart';

class AuthenticationController extends GetxController {
  var state = const AuthState.unAuthenticated().obs;

  void userAuthnticated(String token) {
    state.value = AuthState.authenticated(token: token);
  }

  void userUnAuthnticated() {
    state.value = const AuthState.unAuthenticated();
  }
}
