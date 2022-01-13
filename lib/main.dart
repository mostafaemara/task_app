import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:task/src/controller/auth_controller.dart';
import 'package:task/src/controller/cities_controller.dart';
import 'package:task/src/services/cities_service.dart';
import 'package:task/src/services/user_database_service.dart';

import 'src/routes/routes.dart';

import 'src/services/auth_service.dart';
import 'src/ui/styles/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final userDatabaseService = UserDatabaseService();
  await userDatabaseService.init();
  Get.put(userDatabaseService);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: BindingsBuilder(() {
        Get.lazyPut(() => AuthService());
        Get.put(CitiesService());
        Get.put(AuthController());
        Get.put<CitiesController>(CitiesController());
      }),
      initialRoute: Routes.splash,
      getPages: Routes.routes,
      title: 'task',
      theme: AppTheme.lightTheme,
    );
  }
}
