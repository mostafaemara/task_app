import 'package:flutter/material.dart';
import 'package:task/ui/screens/styles/app_colors.dart';

class AppTheme {
  static get lightTheme {
    final inputBorder = OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.transparent));
    return ThemeData(
        textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(primary: AppColors.buttonTextColor)),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
                side: MaterialStateProperty.all(const BorderSide(
                    color: AppColors.elevatedButtonBorderColor)),
                backgroundColor:
                    MaterialStateProperty.all(AppColors.buttonsBakgroundColor),
                shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)))))),
        inputDecorationTheme: InputDecorationTheme(
            suffixIconColor: AppColors.buttonTextColor,
            hintStyle: const TextStyle(color: AppColors.hintTextColor),
            filled: true,
            contentPadding: const EdgeInsetsDirectional.only(
                top: 11, bottom: 11, start: 28),
            errorBorder: inputBorder,
            disabledBorder: inputBorder,
            focusedBorder: inputBorder,
            enabledBorder: inputBorder,
            fillColor: AppColors.inputBackgroundColor,
            border: inputBorder));
  }
}
