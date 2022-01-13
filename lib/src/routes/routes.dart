import 'package:get/route_manager.dart';
import 'package:task/src/ui/screens/auth/auth_screen.dart';
import 'package:task/src/ui/screens/login/login_screen.dart';
import 'package:task/src/ui/screens/signup/signup_screen.dart';
import 'package:task/src/ui/screens/sites/sites_screen.dart';
import 'package:task/src/ui/screens/splash/splash_screen.dart';

class Routes {
  static const sites = '/sites';
  static const login = '/login';
  static const signup = '/signup';
  static const auth = '/auth';
  static const splash = '/splash';

  static final routes = [
    GetPage(name: auth, page: () => const AuthScreen()),
    GetPage(name: sites, page: () => SitesScreen()),
    GetPage(name: splash, page: () => SplashScreen()),
    GetPage(name: login, page: () => LoginScreen()),
    GetPage(name: signup, page: () => SignupScreen())
  ];
}
