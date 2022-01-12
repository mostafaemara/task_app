import 'package:flutter/material.dart';
import 'package:task/ui/screens/login/login_screen.dart';
import 'package:task/ui/screens/signup/signup_screen.dart';
import 'package:task/ui/screens/styles/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      home: const SignupScreen(),
    );
  }
}
